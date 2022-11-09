package com.sap.cap.workflowbtp.handlers.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.ArrayUtils;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Service;

/**
 * Zip service.
 * It's generic service without wiring to specific data
 */
@Log4j2
@Service
public class DataZipper {

    /**
     * main method. It consumes zip file path, objects to zip and necessary function to perform compression
     *
     * @param zipPath           zip file path
     * @param fileName          file name
     * @param objectsToZip      objects to zip
     * @param objectConvertor   object convertor
     * @param getMarkerFunction function to receive marker
     * @param <T>               type of marker
     * @param <K>               type of incoming objects
     * @return list of markers
     * @throws IOException exception on write
     */
    public <T, K> List<T> zip(String zipPath, String fileName, @NotNull List<K> objectsToZip,
                              Function<K, Byte[]> objectConvertor, Function<K, T> getMarkerFunction) throws IOException {
        List<T> markerList = new ArrayList<>();
        // open new zip file
        try (ZipOutputStream zipOutputStream = new ZipOutputStream(Files.newOutputStream(new File(zipPath).toPath()))) {
            // insert new zip entry
            ZipEntry zipEntry = new ZipEntry(fileName);
            zipOutputStream.putNextEntry(zipEntry);
            // fill zip entry with data
            objectsToZip.forEach(object -> {
                try {
                    zipOutputStream.write(ArrayUtils.toPrimitive(objectConvertor.apply(object)));
                    T marker = getMarkerFunction.apply(object);
                    if (marker != null)
                        markerList.add(marker);
                } catch (IOException ioException) {
                    log.atError().withThrowable(ioException).log("Error at entry processing");
                }
            });
            // close zip entry
            zipOutputStream.closeEntry();
        }
        return markerList;
    }
}
