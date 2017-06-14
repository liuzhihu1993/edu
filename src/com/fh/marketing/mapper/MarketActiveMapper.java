package com.fh.marketing.mapper;

import java.util.List;

import com.fh.po.MarketActive;

public interface MarketActiveMapper
{
    int deleteByPrimaryKey(Integer activeId);
    
    int insert(MarketActive record);
    
    int insertSelective(MarketActive record);
    
    MarketActive selectByPrimaryKey(Integer activeId);
    
    int updateByPrimaryKeySelective(MarketActive record);
    
    int updateByPrimaryKey(MarketActive record);
    
    public List<MarketActive> getMarketList(MarketActive record);
}