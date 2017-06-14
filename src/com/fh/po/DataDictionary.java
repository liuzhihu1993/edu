package com.fh.po;

public class DataDictionary
{
    private Integer dataId;
    
    private String dataContent;
    
    private String dataType;
    
    private String dataDesc;
    
    public Integer getDataId()
    {
        return dataId;
    }
    
    public void setDataId(Integer dataId)
    {
        this.dataId = dataId;
    }
    
    public String getDataContent()
    {
        return dataContent;
    }
    
    public void setDataContent(String dataContent)
    {
        this.dataContent = dataContent;
    }
    
    public String getDataType()
    {
        return dataType;
    }
    
    public void setDataType(String dataType)
    {
        this.dataType = dataType;
    }
    
    public String getDataDesc()
    {
        return dataDesc;
    }
    
    public void setDataDesc(String dataDesc)
    {
        this.dataDesc = dataDesc;
    }
    
    @Override
    public String toString()
    {
        return "DataDictionary [dataId=" + dataId + ", dataContent=" + dataContent + ", dataType=" + dataType
            + ", dataDesc=" + dataDesc + "]";
    }
    
}