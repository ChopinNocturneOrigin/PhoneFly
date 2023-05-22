package pf.controller;

import pf.controller.action.Action;
import pf.controller.action.IndexAction;
import pf.controller.action.admin.board.event.AdminEventDeleteAction;
import pf.controller.action.admin.board.event.AdminEventDetailAction;
import pf.controller.action.admin.board.event.AdminEventDetailFormAction;
import pf.controller.action.admin.board.event.AdminEventListFormAction;
import pf.controller.action.admin.board.event.AdminEventUpdateAction;
import pf.controller.action.admin.board.event.AdminEventUpdateFormAction;
import pf.controller.action.admin.board.notice.AdminNoticeDeleteAction;
import pf.controller.action.admin.board.notice.AdminNoticeDetailAction;
import pf.controller.action.admin.board.notice.AdminNoticeDetailFormAction;
import pf.controller.action.admin.board.notice.AdminNoticeInsertAction;
import pf.controller.action.admin.board.notice.AdminNoticeInsertFormAction;
import pf.controller.action.admin.board.notice.AdminNoticeListAction;
import pf.controller.action.admin.board.notice.AdminNoticeListFormAction;
import pf.controller.action.admin.board.notice.AdminNoticeUpdateAction;
import pf.controller.action.admin.board.notice.AdminNoticeUpdateFormAction;
import pf.controller.action.admin.board.qna.AdminQnaListAction;
import pf.controller.action.admin.board.qna.AdminQnaListFormAction;
import pf.controller.action.admin.board.qna.AdminQna_detailListAction;
import pf.controller.action.admin.board.qna.AdminQna_detailListFormAction;
import pf.controller.action.admin.login.AdminLoginAction;
import pf.controller.action.admin.login.AdminLoginFormAction;
import pf.controller.action.admin.member.AdminMemberDetailAction;
import pf.controller.action.admin.member.AdminMemberListAction;
import pf.controller.action.admin.order.AdminOrderListAction;
import pf.controller.action.admin.order.AdminOrder_detailAction;
import pf.controller.action.admin.product.AdminProductDeleteAction;
import pf.controller.action.admin.product.AdminProductInsertAction;
import pf.controller.action.admin.product.AdminProductInsertFormAction;
import pf.controller.action.admin.product.AdminProductListAction;
import pf.controller.action.admin.product.AdminProductUpdateAction;
import pf.controller.action.admin.product.AdminProductUpdateFormAction;
import pf.controller.action.board.event.EventDetailAction;
import pf.controller.action.board.event.EventListAction;
import pf.controller.action.board.qna.FAQListAction;
import pf.controller.action.board.qna.QnaDeleteAction;
import pf.controller.action.board.qna.QnaDetailAction;
import pf.controller.action.board.qna.QnaListAction;
import pf.controller.action.board.qna.QnaUpdateAction;
import pf.controller.action.board.qna.QnaUpdateformAction;
import pf.controller.action.board.qna.QnaWriteAction;
import pf.controller.action.board.qna.QnaWriteFormAction;
import pf.controller.action.board.review.ReviewWriteAction;
import pf.controller.action.board.review.ReviewWriteFormAction;
import pf.controller.action.cart.CartDeleteAction;
import pf.controller.action.cart.CartInsertAction;
import pf.controller.action.cart.CartListAction;
import pf.controller.action.member.DeleteMemberAction;
import pf.controller.action.member.DeleteMemberFormAction;
import pf.controller.action.member.MemberUpdateAction;
import pf.controller.action.member.MemberUpdateFormAction;
import pf.controller.action.member.join.ContractAction;
import pf.controller.action.member.join.FindZip_numAction;
import pf.controller.action.member.join.IdCheckAction;
import pf.controller.action.member.join.JoinAction;
import pf.controller.action.member.join.JoinFormAction;
import pf.controller.action.member.login.LoginAction;
import pf.controller.action.member.login.LoginFormAction;
import pf.controller.action.member.login.LogoutAction;
import pf.controller.action.member.login.SelectIdAction;
import pf.controller.action.member.login.SelectPwdAction;
import pf.controller.action.member.mypage.MemberCartListAction;
import pf.controller.action.member.mypage.MemberQnaListAction;
import pf.controller.action.member.mypage.MemberReviewDeleteAction;
import pf.controller.action.member.mypage.MemberReviewListAction;
import pf.controller.action.member.mypage.MemberReviewUpdateAction;
import pf.controller.action.order.OrderAction;
import pf.controller.action.order.OrderFormAction;
import pf.controller.action.order.OrderListAction;
import pf.controller.action.order.OrderListFormAction;
import pf.controller.action.product.CategoryAction;
import pf.controller.action.product.ProductCompareAction;
import pf.controller.action.product.ProductDetailAction;
import pf.controller.action.product.ProductListAction;

public class ActionFactory {

	private ActionFactory() {}
	private static ActionFactory itc = new ActionFactory();
	public static ActionFactory getInstance() { return itc; }
	
	public Action getAction(String command) {
	Action ac = null;
	
	//메인(main)
	if( command.equals("index") ) ac = new IndexAction();
	
	//회원(member)
	else if(command.equals("memberUpdateForm") ) ac = new MemberUpdateFormAction();
	else if(command.equals("memberUpdate") ) ac = new MemberUpdateAction();
	else if(command.equals("deleteMemberForm") ) ac = new DeleteMemberFormAction();
	else if(command.equals("deleteMember") ) ac = new DeleteMemberAction();
	//회원(member).login
	else if(command.equals("loginForm") ) ac = new LoginFormAction();
	else if(command.equals("login") ) ac = new LoginAction();
	else if(command.equals("logout") ) ac = new LogoutAction();
	else if(command.equals("selectId") ) ac = new SelectIdAction();
	else if(command.equals("selectPwd") ) ac = new SelectPwdAction();

	
	//회원(member).join
	else if(command.equals("contract") ) ac = new ContractAction();
	else if(command.equals("joinForm") ) ac = new JoinFormAction();
	else if(command.equals("join") ) ac = new JoinAction();
	else if(command.equals("idCheck") ) ac = new IdCheckAction();
	else if(command.equals("findZip_num") ) ac = new FindZip_numAction();
	//회원(member).mypage
	else if(command.equals("memberQnaList") ) ac = new MemberQnaListAction();
	else if(command.equals("memberCartList") ) ac = new MemberCartListAction();
	else if(command.equals("memberReviewList") ) ac = new MemberReviewListAction();
	else if(command.equals("memberReviewUpdate") ) ac = new MemberReviewUpdateAction();
	else if(command.equals("memberReviewDelete") ) ac = new MemberReviewDeleteAction();
		
	
	//주문(order)
	else if(command.equals("orderListForm") ) ac = new OrderListFormAction();
	else if(command.equals("orderList") ) ac = new OrderListAction();
	else if(command.equals("orderForm") ) ac = new OrderFormAction();
	else if(command.equals("order") ) ac = new OrderAction();
	else if(command.equals("orderDetailListForm") ) ac = new AdminOrder_detailAction();
	else if(command.equals("orderDetailList") ) ac = new AdminOrderListAction();
	

	//상품(product)
	else if(command.equals("category") ) ac = new CategoryAction();
	else if(command.equals("productDetail") ) ac = new ProductDetailAction();
	else if(command.equals("productList") ) ac = new ProductListAction();
	else if(command.equals("productCompare") ) ac = new ProductCompareAction();
	
	
	//장바구니(cart)
	else if(command.equals("cartInsert") ) ac = new CartInsertAction();
	else if(command.equals("cartList") ) ac = new CartListAction();
	else if(command.equals("cartDelete") ) ac = new CartDeleteAction();
	
	

	//게시판(board)
	
	//게시판(board).QnA
	else if(command.equals("qnaWriteForm") ) ac = new QnaWriteFormAction();
	else if(command.equals("qnaWrite") ) ac = new QnaWriteAction();
	else if(command.equals("qnaUpdateform") ) ac = new QnaUpdateformAction();
	else if(command.equals("qnaUpdate") ) ac = new QnaUpdateAction();
	else if(command.equals("qnaDelete") ) ac = new QnaDeleteAction();
	else if(command.equals("qnaList") ) ac = new QnaListAction();
	else if(command.equals("qnaDetail") ) ac = new QnaDetailAction();
	else if(command.equals("FAQList") ) ac = new FAQListAction();
	//게시판(board).Review
	else if(command.equals("reviewWriteForm") ) ac = new ReviewWriteFormAction();
	else if(command.equals("reviewWrite") ) ac = new ReviewWriteAction();
	//게시판(board).Event
	else if(command.equals("eventList") ) ac = new EventListAction();
	else if(command.equals("eventDetail") ) ac = new EventDetailAction();
	
	
	
	//관리자(admin)

	//관리자(admin).login
	else if(command.equals("adminLoginFormAction") ) ac = new AdminLoginFormAction();
	else if(command.equals("adminLoginAction") ) ac = new AdminLoginAction();
	//관리자(admin).member
	else if(command.equals("adminMemberListAction") ) ac = new AdminMemberListAction();
	else if(command.equals("adminMemberDetailAction") ) ac = new AdminMemberDetailAction();
	//관리자(admin).product
	else if(command.equals("adminProductListAction") ) ac = new AdminProductListAction();
	else if(command.equals("adminProductInsertFormAction") ) ac = new AdminProductInsertFormAction();
	else if(command.equals("adminProductInsertAction") ) ac = new AdminProductInsertAction();
	else if(command.equals("adminProductDeleteAction") ) ac = new AdminProductDeleteAction();
	else if(command.equals("adminProductUpdateFormAction") ) ac = new AdminProductUpdateFormAction();
	else if(command.equals("adminProductUpdateAction") ) ac = new AdminProductUpdateAction();
	//관리자(admin).order
	else if(command.equals("adminOrderListAction") ) ac = new AdminOrderListAction();
	else if(command.equals("adminOrderDetailAction") ) ac = new AdminOrder_detailAction();

	//관리자(admin).board
	
	//관리자(admin).board.QnA
	else if(command.equals("adminQnaListFormAction") ) ac = new AdminQnaListFormAction();
	else if(command.equals("adminQnaListAction") ) ac = new AdminQnaListAction();
	else if(command.equals("adminQnaDetailListFormAction") ) ac = new AdminQna_detailListFormAction();
	else if(command.equals("adminQnaDetailListAction") ) ac = new AdminQna_detailListAction();
	//관리자(admin).board.Notice
	else if(command.equals("adminNoticeListFormAction") ) ac = new AdminNoticeListFormAction();
	else if(command.equals("adminNoticeListAction") ) ac = new AdminNoticeListAction();
	else if(command.equals("adminNoticeDetailFormAction") ) ac = new AdminNoticeDetailFormAction();
	else if(command.equals("adminNoticeDetailAction") ) ac = new AdminNoticeDetailAction();
	else if(command.equals("adminNoticeInsertFormAction") ) ac = new AdminNoticeInsertFormAction();
	else if(command.equals("adminNoticeInsertAction") ) ac = new AdminNoticeInsertAction();
	else if(command.equals("adminNoticeUpdateFormAction") ) ac = new AdminNoticeUpdateFormAction();
	else if(command.equals("adminNoticeUpdateAction") ) ac = new AdminNoticeUpdateAction();
	else if(command.equals("adminNoticeDeleteAction") ) ac = new AdminNoticeDeleteAction();
	//관리자(admin).board.Event
	else if(command.equals("adminEventListFormAction") ) ac = new AdminEventListFormAction();
	else if(command.equals("adminEventDetailFormAction") ) ac = new AdminEventDetailFormAction();
	else if(command.equals("adminEventDetailAction") ) ac = new AdminEventDetailAction();
	else if(command.equals("adminEventUpdateFormAction") ) ac = new AdminEventUpdateFormAction();
	else if(command.equals("adminEventUpdateAction") ) ac = new AdminEventUpdateAction();
	else if(command.equals("adminEventDeleteAction") ) ac = new AdminEventDeleteAction();
	
	return ac;
	}


}