package com.fh.marketing.service;

import java.util.List;

import com.fh.po.MarketActive;

/**
 * 营销活动的业务逻辑层
 * 
 * @author 风华项目组
 * 
 */
public interface MarketActiveService
{
    
    /**
     * 添加营销活动
     * 
     * @param market
     * @return
     */
    public boolean addMarket(MarketActive market);
    
    /**
     * 修改营销活动
     * 
     * @param market
     * @return
     */
    public boolean updateMarket(MarketActive market);
    
    /**
     * 删除营销活动
     * 
     * @param market
     * @return
     */
    public boolean deleteMarket(Integer activeId);
    
    /**
     * 根据条件查询营销活动信息
     * 
     * @param market
     * @return
     */
    public List<MarketActive> getMarketActiveList(MarketActive market);
    
    /**
     * 根据编号查询营销活动信息
     * 
     * @param activeId
     * @return
     */
    public MarketActive getMarketActive(Integer activeId);
}
