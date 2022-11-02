{
	"contents": {
		"e6530a74-014f-42c1-8dfb-fcaf0a13ac0a": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "dev.workflow.java",
			"subject": "Workflow Request",
			"name": "MyWorkflow",
			"documentation": "Test Workflow",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartWF"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Rejected"
				},
				"fcd75b8d-2044-47dc-8e84-026af47d54fa": {
					"name": "Complete"
				},
				"1732c3b7-db48-4a33-8d06-4a95c2cf5d93": {
					"name": "Canceled"
				},
				"83a05137-97bf-4eda-935d-443f0d38c203": {
					"name": "Cancel"
				},
				"0de69e90-74ec-40ed-a569-3bf9abb1ca2f": {
					"name": "Many Attempts Timer"
				}
			},
			"activities": {
				"a6b0cbbb-f83f-49bd-90eb-eb87d5d65138": {
					"name": "Consider Request"
				},
				"253f1730-9bf7-40a1-b169-22f857f58244": {
					"name": "Create Resolver"
				},
				"a7ad8971-fad7-4a8c-a2d4-2583df74ada0": {
					"name": "Review Request"
				},
				"9ba40bc2-7659-41aa-a6d2-fa9272d67d9b": {
					"name": "Retry Switch"
				},
				"78ce3a2d-2432-4f9b-af35-32f03ef7fcce": {
					"name": "Create Request"
				},
				"0b9d250b-f7e1-4bee-909e-0c0783e51f3d": {
					"name": "Adjust Request"
				},
				"ff774da2-715e-431e-b20f-e69a55c63077": {
					"name": "Adjust Resolver"
				},
				"58b017e4-8e82-4d58-b0c0-4d3736776ad5": {
					"name": "Update Request"
				},
				"d2964025-abd6-498a-a31a-51bda8df2a3b": {
					"name": "Prepare For Finish"
				},
				"9b59dcef-9cf9-4e30-8cbc-ebdb885eb6e3": {
					"name": "Complete Request"
				},
				"7dce47e6-a3f7-4f5e-b439-7624339b7b6d": {
					"name": "Retry Counter"
				},
				"d9703951-1bb9-4a96-a956-d398cec88405": {
					"name": "Retry Resolver"
				},
				"b4379dd2-62d1-47dd-8584-35f3376184b7": {
					"name": "Reset Counter"
				},
				"297d1c0a-d063-448d-af3e-7616573a726b": {
					"name": "Start Notification"
				}
			},
			"sequenceFlows": {
				"8c97bbc3-f553-4ba5-a24f-25367b125256": {
					"name": "SequenceFlow4"
				},
				"58f751af-1711-49b3-8883-715526ef66b1": {
					"name": "SequenceFlow5"
				},
				"d69e11e3-1e15-46a5-a9e0-11af296bae75": {
					"name": "Rejected"
				},
				"fa64d0ab-07d7-4521-b074-159c77439dc8": {
					"name": "Approved"
				},
				"3ce790fa-a10f-40bc-b0cf-b86206313607": {
					"name": "SequenceFlow11"
				},
				"52dd7460-aade-46d9-9d90-5763fd74caa6": {
					"name": "Finish"
				},
				"5df28ab3-d421-441c-a7e8-d2fae8276038": {
					"name": "Retry"
				},
				"1a0a0598-f0f5-46d4-80ed-67c9d33a78f5": {
					"name": "SequenceFlow22"
				},
				"bfa25a4b-5ffd-4466-97fd-0759bb62587b": {
					"name": "SequenceFlow24"
				},
				"221619f5-5548-4905-b236-c26432b82e0c": {
					"name": "Submitted"
				},
				"a27485b5-f40e-4865-a569-7553f8fe7656": {
					"name": "Canceled"
				},
				"f901c7d2-25b4-432c-a131-9a303c5eae92": {
					"name": "SequenceFlow28"
				},
				"9b41714b-f29f-45c6-b9d0-d19bf1398a1f": {
					"name": "SequenceFlow29"
				},
				"4a4bbf78-256e-4c10-89ff-ba048f08ca03": {
					"name": "Canceled"
				},
				"05797033-89c5-4455-a736-3262506c3d19": {
					"name": "SequenceFlow32"
				},
				"27b07056-b9c3-4d59-a644-672f25d7c021": {
					"name": "SequenceFlow34"
				},
				"3e9f870b-de3b-49d4-92a9-a79f689eb00a": {
					"name": "Default"
				},
				"a5f451ac-2d50-4f31-8cd5-29588b58f004": {
					"name": "Wait after 3 attempts"
				},
				"0ea9d6c2-3ac4-4574-b643-db45efd03c08": {
					"name": "SequenceFlow37"
				},
				"e4fbc02d-e731-41ea-ad5c-5d2cf0d044ff": {
					"name": "SequenceFlow39"
				},
				"852b403c-1b79-4ceb-ba09-34fd0c4c3522": {
					"name": "SequenceFlow40"
				},
				"eb61166f-441a-4383-852c-dbccf1b1757a": {
					"name": "SequenceFlow41"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartWF"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Rejected"
		},
		"fcd75b8d-2044-47dc-8e84-026af47d54fa": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Complete"
		},
		"1732c3b7-db48-4a33-8d06-4a95c2cf5d93": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "Canceled"
		},
		"83a05137-97bf-4eda-935d-443f0d38c203": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent5",
			"name": "Cancel"
		},
		"0de69e90-74ec-40ed-a569-3bf9abb1ca2f": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatetimerevent3",
			"name": "Many Attempts Timer",
			"eventDefinitions": {
				"c031aaff-43db-4479-948d-fdc050ecd42e": {}
			}
		},
		"a6b0cbbb-f83f-49bd-90eb-eb87d5d65138": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Consider Request",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "egorprostoy@gmail.com",
			"recipientGroups": "",
			"formReference": "/forms/CreationRequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "CreationRequestForm"
			}, {
				"key": "formRevision",
				"value": "Revision"
			}],
			"customAttributes": [],
			"id": "usertask2",
			"name": "Consider Request"
		},
		"253f1730-9bf7-40a1-b169-22f857f58244": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Create Resolver",
			"documentation": "",
			"default": "d69e11e3-1e15-46a5-a9e0-11af296bae75"
		},
		"a7ad8971-fad7-4a8c-a2d4-2583df74ada0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Review Request",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "egorprostoy@gmail.com",
			"formReference": "/forms/FinishingRequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "FinishingRequestForm"
			}, {
				"key": "formRevision",
				"value": "Revision"
			}],
			"id": "usertask3",
			"name": "Review Request"
		},
		"9ba40bc2-7659-41aa-a6d2-fa9272d67d9b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Retry Switch",
			"default": "4a4bbf78-256e-4c10-89ff-ba048f08ca03"
		},
		"78ce3a2d-2432-4f9b-af35-32f03ef7fcce": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "workflow-java",
			"destinationSource": "consumer",
			"path": "/odata/v4/WorkflowService/Header",
			"httpMethod": "POST",
			"xsrfPath": "",
			"requestVariable": "${context.workflow.object}",
			"responseVariable": "${context.workflow.object}",
			"id": "servicetask4",
			"name": "Create Request"
		},
		"0b9d250b-f7e1-4bee-909e-0c0783e51f3d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Adjust Request",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "egorprostoy@gmail.com",
			"formReference": "/forms/AdjustmentRequestForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "AdjustmentRequestForm"
			}, {
				"key": "formRevision",
				"value": "Revision"
			}],
			"id": "usertask5",
			"name": "Adjust Request"
		},
		"ff774da2-715e-431e-b20f-e69a55c63077": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Adjust Resolver",
			"default": "a27485b5-f40e-4865-a569-7553f8fe7656"
		},
		"58b017e4-8e82-4d58-b0c0-4d3736776ad5": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "workflow-java",
			"destinationSource": "consumer",
			"path": "/odata/v4/WorkflowService/Header(${context.workflow.object.ID})?$expand=items",
			"httpMethod": "PUT",
			"requestVariable": "${context.workflow.object}",
			"responseVariable": "${context.workflow.object}",
			"id": "servicetask5",
			"name": "Update Request"
		},
		"d2964025-abd6-498a-a31a-51bda8df2a3b": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/PrepareForReviewFinish.js",
			"id": "scripttask3",
			"name": "Prepare For Finish"
		},
		"9b59dcef-9cf9-4e30-8cbc-ebdb885eb6e3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "workflow-java",
			"destinationSource": "consumer",
			"path": "/odata/v4/WorkflowService/Header(${context.workflow.object.ID})/WorkflowService.complete?format=json",
			"httpMethod": "POST",
			"requestVariable": "${context.resolution}",
			"responseVariable": "",
			"headers": [{
				"name": "Accept-Encoding",
				"value": "gzip, deflate, br"
			}, {
				"name": "Accept",
				"value": "*/*"
			}],
			"id": "servicetask6",
			"name": "Complete Request"
		},
		"7dce47e6-a3f7-4f5e-b439-7624339b7b6d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/IncreaseCount.js",
			"id": "scripttask4",
			"name": "Retry Counter"
		},
		"d9703951-1bb9-4a96-a956-d398cec88405": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Retry Resolver",
			"default": "3e9f870b-de3b-49d4-92a9-a79f689eb00a"
		},
		"b4379dd2-62d1-47dd-8584-35f3376184b7": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/ResetCounter.js",
			"id": "scripttask5",
			"name": "Reset Counter"
		},
		"297d1c0a-d063-448d-af3e-7616573a726b": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask2",
			"name": "Start Notification",
			"mailDefinitionRef": "95dfb131-a787-4bb2-b42f-0fcd2a0fd828"
		},
		"8c97bbc3-f553-4ba5-a24f-25367b125256": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "297d1c0a-d063-448d-af3e-7616573a726b"
		},
		"58f751af-1711-49b3-8883-715526ef66b1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "a6b0cbbb-f83f-49bd-90eb-eb87d5d65138",
			"targetRef": "253f1730-9bf7-40a1-b169-22f857f58244"
		},
		"d69e11e3-1e15-46a5-a9e0-11af296bae75": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "Rejected",
			"sourceRef": "253f1730-9bf7-40a1-b169-22f857f58244",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"fa64d0ab-07d7-4521-b074-159c77439dc8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask2.last.decision==\"approve\"}",
			"id": "sequenceflow8",
			"name": "Approved",
			"sourceRef": "253f1730-9bf7-40a1-b169-22f857f58244",
			"targetRef": "78ce3a2d-2432-4f9b-af35-32f03ef7fcce"
		},
		"3ce790fa-a10f-40bc-b0cf-b86206313607": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "a7ad8971-fad7-4a8c-a2d4-2583df74ada0",
			"targetRef": "9ba40bc2-7659-41aa-a6d2-fa9272d67d9b"
		},
		"52dd7460-aade-46d9-9d90-5763fd74caa6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision==\"complete\"}",
			"id": "sequenceflow12",
			"name": "Finish",
			"sourceRef": "9ba40bc2-7659-41aa-a6d2-fa9272d67d9b",
			"targetRef": "d2964025-abd6-498a-a31a-51bda8df2a3b"
		},
		"5df28ab3-d421-441c-a7e8-d2fae8276038": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask3.last.decision==\"retry\"}",
			"id": "sequenceflow15",
			"name": "Retry",
			"sourceRef": "9ba40bc2-7659-41aa-a6d2-fa9272d67d9b",
			"targetRef": "7dce47e6-a3f7-4f5e-b439-7624339b7b6d"
		},
		"1a0a0598-f0f5-46d4-80ed-67c9d33a78f5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "78ce3a2d-2432-4f9b-af35-32f03ef7fcce",
			"targetRef": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d"
		},
		"bfa25a4b-5ffd-4466-97fd-0759bb62587b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d",
			"targetRef": "ff774da2-715e-431e-b20f-e69a55c63077"
		},
		"221619f5-5548-4905-b236-c26432b82e0c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask5.last.decision==\"submit\"}",
			"id": "sequenceflow26",
			"name": "Submitted",
			"sourceRef": "ff774da2-715e-431e-b20f-e69a55c63077",
			"targetRef": "58b017e4-8e82-4d58-b0c0-4d3736776ad5"
		},
		"a27485b5-f40e-4865-a569-7553f8fe7656": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "Canceled",
			"sourceRef": "ff774da2-715e-431e-b20f-e69a55c63077",
			"targetRef": "1732c3b7-db48-4a33-8d06-4a95c2cf5d93"
		},
		"f901c7d2-25b4-432c-a131-9a303c5eae92": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "58b017e4-8e82-4d58-b0c0-4d3736776ad5",
			"targetRef": "a7ad8971-fad7-4a8c-a2d4-2583df74ada0"
		},
		"9b41714b-f29f-45c6-b9d0-d19bf1398a1f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "d2964025-abd6-498a-a31a-51bda8df2a3b",
			"targetRef": "9b59dcef-9cf9-4e30-8cbc-ebdb885eb6e3"
		},
		"4a4bbf78-256e-4c10-89ff-ba048f08ca03": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "Canceled",
			"sourceRef": "9ba40bc2-7659-41aa-a6d2-fa9272d67d9b",
			"targetRef": "83a05137-97bf-4eda-935d-443f0d38c203"
		},
		"05797033-89c5-4455-a736-3262506c3d19": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "9b59dcef-9cf9-4e30-8cbc-ebdb885eb6e3",
			"targetRef": "fcd75b8d-2044-47dc-8e84-026af47d54fa"
		},
		"27b07056-b9c3-4d59-a644-672f25d7c021": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "7dce47e6-a3f7-4f5e-b439-7624339b7b6d",
			"targetRef": "d9703951-1bb9-4a96-a956-d398cec88405"
		},
		"3e9f870b-de3b-49d4-92a9-a79f689eb00a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "Default",
			"sourceRef": "d9703951-1bb9-4a96-a956-d398cec88405",
			"targetRef": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d"
		},
		"a5f451ac-2d50-4f31-8cd5-29588b58f004": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.workflow.count >= 3}",
			"id": "sequenceflow36",
			"name": "Wait after 3 attempts",
			"sourceRef": "d9703951-1bb9-4a96-a956-d398cec88405",
			"targetRef": "0de69e90-74ec-40ed-a569-3bf9abb1ca2f"
		},
		"0ea9d6c2-3ac4-4574-b643-db45efd03c08": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow37",
			"name": "SequenceFlow37",
			"sourceRef": "0de69e90-74ec-40ed-a569-3bf9abb1ca2f",
			"targetRef": "b4379dd2-62d1-47dd-8584-35f3376184b7"
		},
		"e4fbc02d-e731-41ea-ad5c-5d2cf0d044ff": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow39",
			"name": "SequenceFlow39",
			"sourceRef": "78ce3a2d-2432-4f9b-af35-32f03ef7fcce",
			"targetRef": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d"
		},
		"852b403c-1b79-4ceb-ba09-34fd0c4c3522": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "b4379dd2-62d1-47dd-8584-35f3376184b7",
			"targetRef": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d"
		},
		"eb61166f-441a-4383-852c-dbccf1b1757a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "SequenceFlow41",
			"sourceRef": "297d1c0a-d063-448d-af3e-7616573a726b",
			"targetRef": "a6b0cbbb-f83f-49bd-90eb-eb87d5d65138"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"7f2bce71-3206-43ee-97be-f82def4f5c53": {},
				"0e6e62a0-dea1-4bac-b694-88a77b225de6": {},
				"64ce4e11-7a32-475f-af41-01ba882f6242": {},
				"e794518b-fb1a-4242-8477-128398e979f9": {},
				"426a50b0-542a-486e-82ba-b1d6f7229109": {},
				"a18b034a-a99c-42b8-8bfe-641af732135e": {},
				"fcc31d68-52da-4093-8f75-6c016f46185d": {},
				"44200136-2fb4-4ce9-b241-68c186026da6": {},
				"303519c8-9a22-47d8-8b86-c2a58e705081": {},
				"c4a1c0b5-2153-4217-898d-f3df26aa9397": {},
				"b6ca48d5-7ef0-4dd7-8e07-44d4a897b2e6": {},
				"32263b8e-39ea-410f-9cb0-f3f6fd0079f8": {},
				"45d6e8dc-a975-4d31-95ca-1edf174c0091": {},
				"b21b01d4-c4bd-4111-9316-9ea169baa8b0": {},
				"3ce25e44-d65e-468d-9c6d-75424d4dd58b": {},
				"0c533f17-b57f-4a75-a509-894ce9390686": {},
				"2e892ecf-f7e4-42c9-a2f7-df159859906b": {},
				"32fbd86f-fd45-46c5-a185-e48d46925042": {},
				"03aca1fa-b957-47c8-94ca-23bd0bb143b2": {},
				"7df46f8c-5374-46be-9d8e-a2177d45ff33": {},
				"f609b65c-a38b-4ab7-8a11-54922e2ac944": {},
				"5039339c-4118-48d5-87ac-f36dcc025406": {},
				"f2dfbba3-e165-4ac5-b9fd-513b64a162e7": {},
				"48ea5c8e-a69a-47fc-9c65-e3a3db835939": {},
				"e1e841bf-b1c5-42f0-90e2-63882fc497a1": {},
				"8e115c97-1e8a-4248-85f9-8592831bb679": {},
				"76d9cf8a-6f3f-4c63-a0f5-6572bf84a252": {},
				"53b65b28-e064-46fb-b001-68d521d3b4f9": {},
				"5a2b5a5f-ecda-43cc-bccc-91668c78bf68": {},
				"337b3e6f-8753-4b6a-ae50-33cbf6b11530": {},
				"9de01a59-64ad-466f-9789-6370f25b0511": {},
				"6921a7c2-6f01-4380-a361-64bf77d67b45": {},
				"9492d971-239c-4243-8b90-730a33285e8a": {},
				"b5902019-bde2-4472-ab61-934bfbdd6b67": {},
				"0afb22cc-6ad9-4a0f-8fda-ec75b447640b": {},
				"2a0b71c3-0fa5-4e47-87b6-4de05ebd010a": {},
				"6e4f99dc-3d1d-4b1b-9568-444a5397bf4d": {},
				"337e7e52-d0e4-40f8-a08b-3732e5d7af4e": {},
				"6b7c4545-f5cc-49de-aa8d-1f999bc6e10d": {},
				"ffd4962b-3797-4192-99b3-27a4fe237975": {}
			}
		},
		"c031aaff-43db-4479-948d-fdc050ecd42e": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "PT30M",
			"id": "timereventdefinition4"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 141.49999970197678,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 363.9999964237213,
			"y": -16,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"7f2bce71-3206-43ee-97be-f82def4f5c53": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 43.999998807907104,
			"y": -113.50000029802322,
			"width": 100,
			"height": 60,
			"object": "a6b0cbbb-f83f-49bd-90eb-eb87d5d65138"
		},
		"0e6e62a0-dea1-4bac-b694-88a77b225de6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,157.49999970197678 94,157.49999970197678",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6b7c4545-f5cc-49de-aa8d-1f999bc6e10d",
			"object": "8c97bbc3-f553-4ba5-a24f-25367b125256"
		},
		"64ce4e11-7a32-475f-af41-01ba882f6242": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "143.9999988079071,-83.50000029802322 190.25,-83.5 190.25,-193.5 235.9999976158142,-193.5",
			"sourceSymbol": "7f2bce71-3206-43ee-97be-f82def4f5c53",
			"targetSymbol": "e794518b-fb1a-4242-8477-128398e979f9",
			"object": "58f751af-1711-49b3-8883-715526ef66b1"
		},
		"e794518b-fb1a-4242-8477-128398e979f9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 235.9999976158142,
			"y": -214.5,
			"object": "253f1730-9bf7-40a1-b169-22f857f58244"
		},
		"426a50b0-542a-486e-82ba-b1d6f7229109": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "277.9999976158142,-193.5 321,-193.5 321,1.5 363.9999964237213,1.5",
			"sourceSymbol": "e794518b-fb1a-4242-8477-128398e979f9",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "d69e11e3-1e15-46a5-a9e0-11af296bae75"
		},
		"a18b034a-a99c-42b8-8bfe-641af732135e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "277.9999976158142,-193.5 366.5,-193.5 366.5,-154 454.9999964237213,-154",
			"sourceSymbol": "e794518b-fb1a-4242-8477-128398e979f9",
			"targetSymbol": "45d6e8dc-a975-4d31-95ca-1edf174c0091",
			"object": "fa64d0ab-07d7-4521-b074-159c77439dc8"
		},
		"fcc31d68-52da-4093-8f75-6c016f46185d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 2196.999988079071,
			"y": 118.99999970197678,
			"width": 35,
			"height": 35,
			"object": "fcd75b8d-2044-47dc-8e84-026af47d54fa"
		},
		"44200136-2fb4-4ce9-b241-68c186026da6": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1257.9999916553497,
			"y": 109.5,
			"width": 100,
			"height": 60,
			"object": "a7ad8971-fad7-4a8c-a2d4-2583df74ada0"
		},
		"303519c8-9a22-47d8-8b86-c2a58e705081": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1357.9999916553497,139.5 1427.9999904632568,139.5",
			"sourceSymbol": "44200136-2fb4-4ce9-b241-68c186026da6",
			"targetSymbol": "c4a1c0b5-2153-4217-898d-f3df26aa9397",
			"object": "3ce790fa-a10f-40bc-b0cf-b86206313607"
		},
		"c4a1c0b5-2153-4217-898d-f3df26aa9397": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1427.9999904632568,
			"y": 118.5,
			"object": "9ba40bc2-7659-41aa-a6d2-fa9272d67d9b"
		},
		"b6ca48d5-7ef0-4dd7-8e07-44d4a897b2e6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1448.9999904632568,139.5 1675.5,139.5 1675.5,-4 1930.999989271164,-4.000000298023224",
			"sourceSymbol": "c4a1c0b5-2153-4217-898d-f3df26aa9397",
			"targetSymbol": "f2dfbba3-e165-4ac5-b9fd-513b64a162e7",
			"object": "52dd7460-aade-46d9-9d90-5763fd74caa6"
		},
		"32263b8e-39ea-410f-9cb0-f3f6fd0079f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1469.9999904632568,139.5 1504.9999898672104,139.5 1504.9999898672104,244.99999970197678 1539.999989271164,244.99999970197678",
			"sourceSymbol": "c4a1c0b5-2153-4217-898d-f3df26aa9397",
			"targetSymbol": "5a2b5a5f-ecda-43cc-bccc-91668c78bf68",
			"object": "5df28ab3-d421-441c-a7e8-d2fae8276038"
		},
		"45d6e8dc-a975-4d31-95ca-1edf174c0091": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 454.9999964237213,
			"y": -184,
			"width": 100,
			"height": 60,
			"object": "78ce3a2d-2432-4f9b-af35-32f03ef7fcce"
		},
		"b21b01d4-c4bd-4111-9316-9ea169baa8b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "554.9999964237213,-151.75 668.25,-151.75 668.25,-74.75 780.9999952316284,-74.75",
			"sourceSymbol": "45d6e8dc-a975-4d31-95ca-1edf174c0091",
			"targetSymbol": "3ce25e44-d65e-468d-9c6d-75424d4dd58b",
			"object": "1a0a0598-f0f5-46d4-80ed-67c9d33a78f5"
		},
		"3ce25e44-d65e-468d-9c6d-75424d4dd58b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 780.9999952316284,
			"y": -102.5,
			"width": 100,
			"height": 60,
			"object": "0b9d250b-f7e1-4bee-909e-0c0783e51f3d"
		},
		"0c533f17-b57f-4a75-a509-894ce9390686": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "880.9999952316284,-72.5 906.25,-72.5 906.25,139.5 930.9999940395355,139.5",
			"sourceSymbol": "3ce25e44-d65e-468d-9c6d-75424d4dd58b",
			"targetSymbol": "2e892ecf-f7e4-42c9-a2f7-df159859906b",
			"object": "bfa25a4b-5ffd-4466-97fd-0759bb62587b"
		},
		"2e892ecf-f7e4-42c9-a2f7-df159859906b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 930.9999940395355,
			"y": 118.5,
			"object": "ff774da2-715e-431e-b20f-e69a55c63077"
		},
		"32fbd86f-fd45-46c5-a185-e48d46925042": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "972.9999940395355,139.5 1052.999993443489,139.5 1052.999993443489,97 1087.9999928474426,97",
			"sourceSymbol": "2e892ecf-f7e4-42c9-a2f7-df159859906b",
			"targetSymbol": "f609b65c-a38b-4ab7-8a11-54922e2ac944",
			"object": "221619f5-5548-4905-b236-c26432b82e0c"
		},
		"03aca1fa-b957-47c8-94ca-23bd0bb143b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1087.9999928474426,
			"y": 177,
			"width": 35,
			"height": 35,
			"object": "1732c3b7-db48-4a33-8d06-4a95c2cf5d93"
		},
		"7df46f8c-5374-46be-9d8e-a2177d45ff33": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "972.9999940395355,139.5 1052.999993443489,139.5 1052.999993443489,194.5 1087.9999928474426,194.5",
			"sourceSymbol": "2e892ecf-f7e4-42c9-a2f7-df159859906b",
			"targetSymbol": "03aca1fa-b957-47c8-94ca-23bd0bb143b2",
			"object": "a27485b5-f40e-4865-a569-7553f8fe7656"
		},
		"f609b65c-a38b-4ab7-8a11-54922e2ac944": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 1087.9999928474426,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "58b017e4-8e82-4d58-b0c0-4d3736776ad5"
		},
		"5039339c-4118-48d5-87ac-f36dcc025406": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1187.9999928474426,97 1222.9999922513962,97 1222.9999922513962,139.5 1257.9999916553497,139.5",
			"sourceSymbol": "f609b65c-a38b-4ab7-8a11-54922e2ac944",
			"targetSymbol": "44200136-2fb4-4ce9-b241-68c186026da6",
			"object": "f901c7d2-25b4-432c-a131-9a303c5eae92"
		},
		"f2dfbba3-e165-4ac5-b9fd-513b64a162e7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1880.999989271164,
			"y": -34.000000298023224,
			"width": 100,
			"height": 60,
			"object": "d2964025-abd6-498a-a31a-51bda8df2a3b"
		},
		"48ea5c8e-a69a-47fc-9c65-e3a3db835939": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1980.999989271164,-4.000000298023224 1996.75,-4.000000476837158 1996.75,140.5 2011.999988079071,140.49999970197678",
			"sourceSymbol": "f2dfbba3-e165-4ac5-b9fd-513b64a162e7",
			"targetSymbol": "76d9cf8a-6f3f-4c63-a0f5-6572bf84a252",
			"object": "9b41714b-f29f-45c6-b9d0-d19bf1398a1f"
		},
		"e1e841bf-b1c5-42f0-90e2-63882fc497a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1539.999989271164,
			"y": -95.00000029802322,
			"width": 35,
			"height": 35,
			"object": "83a05137-97bf-4eda-935d-443f0d38c203"
		},
		"8e115c97-1e8a-4248-85f9-8592831bb679": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1469.9999904632568,139.5 1505,139.5 1505,-77.5 1539.999989271164,-77.50000029802322",
			"sourceSymbol": "c4a1c0b5-2153-4217-898d-f3df26aa9397",
			"targetSymbol": "e1e841bf-b1c5-42f0-90e2-63882fc497a1",
			"object": "4a4bbf78-256e-4c10-89ff-ba048f08ca03"
		},
		"76d9cf8a-6f3f-4c63-a0f5-6572bf84a252": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 2011.999988079071,
			"y": 110.49999970197678,
			"width": 100,
			"height": 60,
			"object": "9b59dcef-9cf9-4e30-8cbc-ebdb885eb6e3"
		},
		"53b65b28-e064-46fb-b001-68d521d3b4f9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "2111.999988079071,138.49999970197678 2196.999988079071,138.49999970197678",
			"sourceSymbol": "76d9cf8a-6f3f-4c63-a0f5-6572bf84a252",
			"targetSymbol": "fcc31d68-52da-4093-8f75-6c016f46185d",
			"object": "05797033-89c5-4455-a736-3262506c3d19"
		},
		"5a2b5a5f-ecda-43cc-bccc-91668c78bf68": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1539.999989271164,
			"y": 224.99999970197678,
			"width": 100,
			"height": 60,
			"object": "7dce47e6-a3f7-4f5e-b439-7624339b7b6d"
		},
		"337b3e6f-8753-4b6a-ae50-33cbf6b11530": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1539.999989271164,244.99999970197678 1504.9999898672104,244.99999970197678 1504.9999898672104,195.49999940395355 1392.9999910593033,195.49999940395355 1392.9999910593033,204.49999940395355 1222.9999922513962,204.49999940395355 1222.9999922513962,400 398.99999821186066,400 398.99999821186066,212.49999970197678 363.9999988079071,212.49999970197678",
			"sourceSymbol": "5a2b5a5f-ecda-43cc-bccc-91668c78bf68",
			"targetSymbol": "9de01a59-64ad-466f-9789-6370f25b0511",
			"object": "27b07056-b9c3-4d59-a644-672f25d7c021"
		},
		"9de01a59-64ad-466f-9789-6370f25b0511": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 321.9999988079071,
			"y": 191.49999970197678,
			"object": "d9703951-1bb9-4a96-a956-d398cec88405"
		},
		"6921a7c2-6f01-4380-a361-64bf77d67b45": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "363.9999988079071,212.49999970197678 572.5,212.5 572.5,-72.5 780.9999952316284,-72.5",
			"sourceSymbol": "9de01a59-64ad-466f-9789-6370f25b0511",
			"targetSymbol": "3ce25e44-d65e-468d-9c6d-75424d4dd58b",
			"object": "3e9f870b-de3b-49d4-92a9-a79f689eb00a"
		},
		"9492d971-239c-4243-8b90-730a33285e8a": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": 438.9999976158142,
			"y": 169.5,
			"width": 32,
			"height": 32,
			"object": "0de69e90-74ec-40ed-a569-3bf9abb1ca2f"
		},
		"b5902019-bde2-4472-ab61-934bfbdd6b67": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "363.9999988079071,212.49999970197678 398.99999821186066,212.49999970197678 398.99999821186066,185.5 438.9999976158142,185.5",
			"sourceSymbol": "9de01a59-64ad-466f-9789-6370f25b0511",
			"targetSymbol": "9492d971-239c-4243-8b90-730a33285e8a",
			"object": "a5f451ac-2d50-4f31-8cd5-29588b58f004"
		},
		"0afb22cc-6ad9-4a0f-8fda-ec75b447640b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 590.9999964237213,
			"y": 207,
			"width": 100,
			"height": 60,
			"object": "b4379dd2-62d1-47dd-8584-35f3376184b7"
		},
		"2a0b71c3-0fa5-4e47-87b6-4de05ebd010a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "470.9999976158142,185.5 555.9999970197678,185.5 555.9999970197678,237 590.9999964237213,237",
			"sourceSymbol": "9492d971-239c-4243-8b90-730a33285e8a",
			"targetSymbol": "0afb22cc-6ad9-4a0f-8fda-ec75b447640b",
			"object": "0ea9d6c2-3ac4-4574-b643-db45efd03c08"
		},
		"6e4f99dc-3d1d-4b1b-9568-444a5397bf4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "554.9999964237213,-151.75 668.25,-151.75 668.25,-74.75 780.9999952316284,-74.75",
			"sourceSymbol": "45d6e8dc-a975-4d31-95ca-1edf174c0091",
			"targetSymbol": "3ce25e44-d65e-468d-9c6d-75424d4dd58b",
			"object": "e4fbc02d-e731-41ea-ad5c-5d2cf0d044ff"
		},
		"337e7e52-d0e4-40f8-a08b-3732e5d7af4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "690.9999964237213,237 736.25,237 736.25,-72.5 780.9999952316284,-72.5",
			"sourceSymbol": "0afb22cc-6ad9-4a0f-8fda-ec75b447640b",
			"targetSymbol": "3ce25e44-d65e-468d-9c6d-75424d4dd58b",
			"object": "852b403c-1b79-4ceb-ba09-34fd0c4c3522"
		},
		"6b7c4545-f5cc-49de-aa8d-1f999bc6e10d": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 94,
			"y": 127.49999970197678,
			"width": 100,
			"height": 60,
			"object": "297d1c0a-d063-448d-af3e-7616573a726b"
		},
		"ffd4962b-3797-4192-99b3-27a4fe237975": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,157.49999970197678 244.5,157.5 244.5,37 -6.5,37 -6.5,-83.5 43.999998807907104,-83.50000029802322",
			"sourceSymbol": "6b7c4545-f5cc-49de-aa8d-1f999bc6e10d",
			"targetSymbol": "7f2bce71-3206-43ee-97be-f82def4f5c53",
			"object": "eb61166f-441a-4383-852c-dbccf1b1757a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"timereventdefinition": 4,
			"maildefinition": 2,
			"hubapireference": 1,
			"escalationeventdefinition": 1,
			"intermediateescalationevent": 1,
			"sequenceflow": 42,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"intermediatetimerevent": 3,
			"boundarytimerevent": 1,
			"endevent": 6,
			"usertask": 6,
			"servicetask": 6,
			"scripttask": 6,
			"mailtask": 2,
			"exclusivegateway": 4,
			"parallelgateway": 1
		},
		"da14039e-9aa7-4081-9576-40cc92c62804": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "idda14039e-9aa7-4081-9576-40cc92c62804"
		},
		"95dfb131-a787-4bb2-b42f-0fcd2a0fd828": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "egorprostoy@gmail.com",
			"subject": "It starts",
			"text": "It starts",
			"id": "maildefinition2"
		}
	}
}