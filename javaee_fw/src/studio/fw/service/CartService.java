package studio.fw.service;

import java.util.List;

import studio.fw.entity.CartInfo;

public interface CartService {
	// 用户ID得到所有商品
	List<CartInfo> sList(Integer user_id);

	// 删除
	int deleteByPrimaryKey(Integer cartId);

	// 加入购物车
	int insertSelective(CartInfo record);
}
