<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PhoneFly - compare Popup</title>
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mainBanner.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/comparePopup.css">
<script src="script/jquery-3.6.4.min.js"></script>
<script src="script/common.js"></script>
<script src="script/mainMenu.js"></script>
<script src="script/mainBanner.js"></script>
<script src="script/mainColorSelect.js"></script>
<script src="script/comparePopup.js"></script>
</head>
<body style="background-color:gray">
<br /><br /><br /><br /><br />
<div class="compare-popup compare-popup-open">
	<div class="arrow-btn">
		<a href="javascript:;" class="arrow-i disabled" onclick="openCloseArrow();"></a>
	</div>
	<div class="wrap compare-wrap">
		<div class="compare-btns">
			<ul>
				<li class="reset-i"><span class="btn-underline" onclick="btnReset(this)">비우기</span></li>
				<li><button class="btn-compare" onclick="openCompareWindow(this)">비교하기</button></li>
			</ul>
		</div>
		<div class="clear"></div>

		<div class="compare-boxes">


			<ul>
				<li>
					<div class="compare-box">
						<div>
							<div class="compare-box-image">
								<img src="images/productImage/Aippr1401.png" />
							</div>
							<div class="compare-box-text">
								<div class="compare-box-name">
								iPhone 14 Pro
								</div>
								<div class="compare-box-price">
								<fmt:formatNumber value="1500000" type="number" maxFractionDigits="3" />원
								</div>
							</div>
							<div class="compare-box-xbtn">
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="compare-box disabled">
						<div>
							<div class="compare-box-image display-none">
								<img src="images/productImage/Aippr1401.png" />
							</div>
							<div class="compare-box-text display-none">
								<div class="compare-box-name">
								iPhone 14 Pro
								</div>
								<div class="compare-box-price display-none">
								<fmt:formatNumber value="1500000" type="number" maxFractionDigits="3" />원
								</div>
							</div>
							<div class="compare-box-xbtn display-none" onclick="javascript:;">
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="compare-box disabled">
					</div>
				</li>
				<li>
					<div class="compare-box disabled">
					</div>
				</li>
			</ul>


		</div>
	</div>
</div>

</body>
</html>