<%@ page contentType="text/html;charset=utf-8"%><%@ page import="com.dext5.DEXT5Handler" %><%@ page import="com.dext5.event.*" %><%@ page import="com.dext5.util.EventVo" %><% 
	out.clear(); // Servlet으로 handler 작업을 하시려면 제거해주세요.
	
	String _allowFileExt = "gif, jpg, jpeg, png, bmp, wmv, asf, swf, avi, mpg, mpeg, mp4, txt, doc, docx, xls, xlsx, ppt, pptx, hwp, zip, pdf,flv";
	int upload_max_size = 2147483647;

	// Servlet으로 handler 작업을 하시려면 다음과 같이 작성해 주세요.
	// 만일 getServletContext()가 undefined 이면 request.getSession().getServletContext(); 으로 하시면 됩니다.
	// ServletContext application = getServletContext();

	DEXT5Handler DEXT5 = new DEXT5Handler();
	
	EventClass event = new EventClass();
	
	/*
	event.addBeforeUploadEventListener(new BeforeUploadEventListener() {
		public void beforeUploadEvent(EventVo eventVo) {
			//파일을 업로드하기 전에 발생하는 이벤트 입니다.
			//파일에 대한 저장 경로를 변경해야 하는 경우 사용합니다.
		
			//HttpServletRequest request = eventVo.getRequest(); //Request Value
			//HttpServletResponse response = eventVo.getResponse(); //Response Value
			//String strNewFileLocation = eventVo.getNewFileLocation(); //NewFileLocation Value
			//String strNewFileLocationWithoutFileName = eventVo.getNewFileLocationWithoutFileName(); //NewFileLocationWithoutFileName Value
			//String strNewFileName = eventVo.getNewFileName(); //NewFileName Value
			//String strNewFileNameWithoutExtension = eventVo.getNewFileNameWithoutExtension(); //NewFileNameWithoutExtension Value
			//String strNewFileExtension = eventVo.getNewFileExtension(); //NewFileExtension Value
			//String strUploadType = eventVo.getUploadType(); //UploadType Value
		
			//eventVo.setNewFileLocation(strNewFileLocation); //Change NewFileLocation Value
			//eventVo.setNewFileLocationWithoutFileName(strNewFileLocationWithoutFileName); //Change NewFileLocationWithoutFileName Value
			//eventVo.setNewFileName(strNewFileName); //Change NewFileName Value
			//eventVo.setNewFileNameWithoutExtension(strNewFileNameWithoutExtension); //Change NewFileNameWithoutExtension Value
			//eventVo.setNewFileExtension(strNewFileExtension); //Change NewFileExtension Value
			//eventVo.setCustomError("사용자오류");
		}
	});
	*/

	// 환경설정파일 물리적 폴더 (서버 환경변수를 사용할 경우)
	//DEXT5.SetConfigPhysicalPath("C:/dext5/config");

	//DEXT5.SetJpegQuality(100); // JPG 품질 (1 ~ 100)
	// (저품질, 용량 축소) 1 ~ 100 (고품질, 용량 증가) - jdk 1.5 이상에서만 사용가능합니다.
	//DEXT5.SetAntialiasing(true); // 이미지 안티앨리어싱 활성화

	// ***************보안 설정 : 업로드 가능한 경로 설정 - 이외의 경로로 업로드 불가능***************
	String[] allowUploadDirectoryPath = { request.getSession().getServletContext().getRealPath("/") };
	DEXT5.SetAllowUploadDirectoryPath(allowUploadDirectoryPath);
	
	//***************보안 설정 : Parameter 암호화 필수 검증 설정***************
	//Client Encrypt Parameter 설정값과 일치하게 설정, 설정하지 않을 경우 Parameter 암호화 필수 검증 진행하지 않음
	DEXT5.SetEncryptParameter("3");

	String result = DEXT5.DEXTProcess(request, response, application, _allowFileExt, upload_max_size, event);

	if(DEXT5.IsImageUpload()) {
		/*
		// 동일 폴더에 이미지 썸네일 생성하기
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageThumbnail(strSourceFile, "_thumb", 600, 0);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/

		/*
		// 동일 폴더에 이미지 썸네일 생성하기 (변경된 파일경로 리턴)
		String strSourceFile = DEXT5.LastSaveFile();
		String strChangedFile = DEXT5.ImageThumbnailEx(strSourceFile, "_thumb", 600, 0);
		if (strChangedFile.equals("")) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 썸네일 파일 생성
		String strSourceFile = DEXT5.LastSaveFile();
		String strNewFileName = strSourceFile.replaceAll("\\\\image\\\\", "\\thumbnail\\");
		int rtn_value = DEXT5.GetImageThumbOrNewEx(strSourceFile, strNewFileName, 200, 0, 0);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 이미지 포멧 변경
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageConvertFormat(strSourceFile, "png", 0);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/

		/*
		// 이미지 포멧 변경 (변경된 파일경로 리턴)
		String strSourceFile = DEXT5.LastSaveFile();
		String strChangedFile = DEXT5.ImageConvertFormatEx(strSourceFile, "jpg", 0);
		if (strChangedFile.equals("")) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 이미지 크기 변환
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageConvertSize(strSourceFile, 500, 30);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 비율로 이미지 크기 변환
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageConvertSizeByPercent(strSourceFile, 50);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 비율로 이미지 크기 변환
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageConvertSizeByPercent(strSourceFile, 50);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 이미지 회전
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.ImageRotate(strSourceFile, 90);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 이미지 워터마크
		String strSourceFile = DEXT5.LastSaveFile();
		String strWaterMarkFile = "C:\\Temp\\watermark.jpg";
		int rtn_value = DEXT5.ImageWaterMark(strSourceFile, strWaterMarkFile, "TOP", 10, "RIGHT", 10, 0);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/

		/*
		// 텍스트 워터마크
		String strSourceFile = DEXT5.LastSaveFile();
		DEXT5.SetFontInfo("굴림", 50, "FF00FF");
		int rtn_value = DEXT5.TextWaterMark(strSourceFile, "DEXT5", "TOP", 10, "CENTER", 10, 0, 45);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
        
        /*
		// 다른 파일명.확장자 
		String strSourceFile = DEXT5.LastSaveFile();
        String rtn_value = DEXT5.GetNewFileNameEx("jpg", "TIME");
		if (rtn_value.equals("")) {
			String strLastError = DEXT5.LastErrorMessage();
		}
        */
        
        /*
        // 이미지 가로(Width) 크기
        String strSourceFile = DEXT5.LastSaveFile();
        int rtn_value = DEXT5.GetImageWidth(strSourceFile);
        if (rtn_value <= 0) {
            String strLastError = DEXT5.LastErrorMessage();
        }
        */
		
		/*
		// 이미지 세로(Height) 크기
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.GetImageHeight(strSourceFile);
		if (rtn_value <= 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/

		/*
		// 이미지 Format 정보
		String strSourceFile = DEXT5.LastSaveFile();
		String rtn_value = DEXT5.GetImageFormat(strSourceFile);
		if (rtn_value == "") {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 이미지 파일 크기
		String strSourceFile = DEXT5.LastSaveFile();
		long rtn_value = DEXT5.GetImageFileSize(strSourceFile);
		if (rtn_value <= 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/
		
		/*
		// 파일 삭제
		String strSourceFile = DEXT5.LastSaveFile();
		int rtn_value = DEXT5.DeleteFile(strSourceFile);
		if (rtn_value != 0) {
			String strLastError = DEXT5.LastErrorMessage();
		}
		*/

		/*
		// 원본 파일명 가져오기
		String strOriginalFileName = DEXT5.OriginalFileName();
		*/
	}

	// 파일 저장 경로 (물리적 경로)
	//if(DEXT5.LastSaveFile().length() > 0) { 
	//	System.out.println("save file : [" + DEXT5.LastSaveFile() + "]");
	//}

	// 파일 저장 경로 (WEB URL)
	//if(DEXT5.LastSaveUrl().length() > 0) { 
	//System.out.println("save url : [" + DEXT5.LastSaveUrl() + "]");
	//}

	// 에러 Message 
	//if(DEXT5.LastErrorMessage().length() > 0) { 
	//	System.out.println("DEXT5 Handler Error : [" + DEXT5.LastErrorMessage() + "]");
	//}

	if(!result.equals("")) {
		/*
		// 이미지, 동영상, 파일 등 업로드 동작일 경우 response 되는 경로 변경 방법
		if(!DEXT5.getUploadType().equals("")) {
			
			// String DEXT5.MakeResultString(String serverDomain, String serverPath, String parameter, String attribute);
			// serverDomain : Tag의 src에 삽입될 url의 domain을 설정합니다. (/ 설정시 도메인 없이 Virtual Patht로 세팅되며, 빈값("")일 경우 핸들러url 기준 도메인이 세팅됩니다.)
			// serverPath : 도메인 뒤의 path를 의미합니다. (빈값("")일 경우 업로드된 파일의 path 정보가 들어갑니다.)
			// parameter : Tag의 src에 삽입될 url에 추가할 Parameter를 설정합니다.
			// attribute : Tag에 추가할 Attribute를 설정합니다. (제일 앞에 구분자를 삽입하여야 하며, Client에서 설정된 image_custom_property_delimiter 값(기본값:|)으로 구분되어야 합니다.)

			// 아래는 API 사용 예시입니다.
			String resultString = DEXT5.MakeResultString("http://www.dext5.com","/fileData.jsp","param1=1&param2=2","|att1^1|att2^2");
			result = resultString;
		}
		*/
		out.print(result);
	}

	// Servlet으로 handler 작업을 하시려면 다음과 같이 작성해 주세요.
	// Servlet으로 구성하실 때 해당 Function의 Return Type은 void로 선언 후 return 되는 값은 반드시 없어야합니다.
	/*
	if(!result.equals("")) {
		response.setContentType("text/html");
		ServletOutputStream out = response.getOutputStream();
		out.print(result);
		out.close();
	}
	*/
%>