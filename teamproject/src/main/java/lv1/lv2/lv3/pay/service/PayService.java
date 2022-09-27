package lv1.lv2.lv3.pay.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import lv1.lv2.lv3.pay.vo.KakaoPayVO;
import lv1.lv2.lv3.pay.vo.PayInfoVO;

@Service
public class PayService {

	private static final String HOST = "https://kapi.kakao.com";
	private String partner_order_id;
	private String partner_user_id;
	private KakaoPayVO kakaoPayVO;
	private PayInfoVO payInfoVO;
	
	public PayInfoVO KakaoPayApprove(String pg_token) {

		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 39deae28769eaf571671558a88666f8b");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("cid", "TC0ONETIME");
		map.add("tid", kakaoPayVO.getTid());
		map.add("partner_order_id", partner_order_id);
		map.add("partner_user_id", partner_user_id);
		map.add("pg_token", pg_token);

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			payInfoVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), request, PayInfoVO.class);
			return payInfoVO;

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


	public String KakaoPayReady(String total_amount, String quantity) {

		RestTemplate restTemplate = new RestTemplate();
		partner_order_id = "1234";
		partner_user_id = "CGV";
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 39deae28769eaf571671558a88666f8b");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();

		map.add("cid", "TC0ONETIME");
		map.add("partner_order_id", partner_order_id);
		map.add("partner_user_id", partner_user_id);
		map.add("item_name", "KH 영화관람권"); // 상품명
		map.add("quantity", quantity); // 수량
		map.add("total_amount", total_amount); // 금액
		map.add("tax_free_amount", "0"); // 세금
		map.add("approval_url", "http://localhost/pay/kakaoPaySuccess");
		map.add("cancel_url", "http://localhost/pay/kakaoPayCancel");
		map.add("fail_url", "http://localhost/pay/kakaoPayFail");

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			kakaoPayVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), request, KakaoPayVO.class);
			return kakaoPayVO.getNext_redirect_pc_url();

		} catch (RestClientException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		return "/pay";
	}

}
