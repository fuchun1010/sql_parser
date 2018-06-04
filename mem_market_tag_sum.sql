CREATE TABLE `mem_market_tag_sum`(
  `member_id` int COMMENT '会员ID',
  `member_type` char(1) COMMENT '会员类型 P: 手机会员 C: 实体卡会员',
  `phone_num` varchar(32) COMMENT '手机号码',
  `wx_open_id` varchar(32) COMMENT '微信OpenId',
  `account_balance` int COMMENT '最新账户余额',
  `integral_account_balance` int COMMENT '最新积分账户余额',
  `integral_account_total` int COMMENT '最新积分账户总额',
  `growth_value` int COMMENT '成长值',
  `wx_binding_status` char(1) COMMENT '微信绑定状态',
  `register_time` varchar(14) COMMENT '注册日期',
  `member_level_id` int COMMENT '会员等级ID',
  `member_level_name` varchar(32) COMMENT '会员等级',
  `register_store_name` varchar(64) COMMENT '注册门店',
  `register_store` varchar(32) COMMENT '注册门店代码',
  `first_login_store_name` varchar(64) COMMENT '首次访问门店',
  `first_login_store` varchar(32) COMMENT '首次访问门店代码',
  `register_city_name` varchar(6) COMMENT '注册城市',
  `register_deliver_center_name` varchar(64) COMMENT '注册配送中心名称',
  `register_deliver_center` varchar(32) COMMENT '注册配送中心代码',
  `register_channel_name` varchar(32) COMMENT '注册渠道',
  `register_channel` char(1) COMMENT '注册渠道代码',
  `register_duration` int COMMENT '注册时长',
  `total_consume_cnt` int COMMENT '累计消费次数',
  `total_consume_amt` int COMMENT '累计消费金额',
  `last_consume_amt` int COMMENT '最后消费金额',
  `last_consume_duration` int COMMENT '最后消费时长',
  `last_consume_time` varchar(14) COMMENT '最后消费日期',
  `last_consume_store` varchar(32) COMMENT '最后消费门店',
  `last_consume_store_name` varchar(64) COMMENT '最后消费门店名称',
  `last_consume_city` varchar(6) COMMENT '最后消费城市',
  `eb_total_consume_amt` int COMMENT '电商累计消费金额',
  `eb_total_consume_cnt` int COMMENT '电商累计消费次数',
  `last_3m_shop_cycle` int COMMENT '最近3个月购物周期',
  `last_3m_shop_period` int COMMENT '最近3个月购物时段',
  `last_refund_time` varchar(14) COMMENT '最后退款日期',
  `last_refund_amt` int COMMENT '最后退款金额',
  `total_refund_cnt` int COMMENT '累计退款次数',
  `total_refund_amt` int COMMENT '累计退款金额',
  `eb_total_refund_amt` int COMMENT '电商累计退款金额',
  `eb_total_refund_cnt` int COMMENT '电商累计退款次数',
  `total_deposit_amt` int COMMENT '累计充值金额',
  `total_deposit_cnt` int COMMENT '累计充值次数',
  `eb_total_deposit_amt` int COMMENT '电商累计充值金额',
  `eb_total_deposit_cnt` int COMMENT '电商累计充值次数',
  `last_deposit_amt` int COMMENT '最后充值金额',
  `last_deposit_store` varchar(32) COMMENT '最后充值门店',
  `last_deposit_store_name` char(64) COMMENT '最后充值门店名称',
  `last_deposit_city` varchar(6) COMMENT '最后充值城市',
  `last_consume_channel` varchar(1) COMMENT '最后消费渠道',
  `last_deposit_channel` varchar(1) COMMENT '最后充值渠道',
  `last_refund_channel` varchar(1) COMMENT '最后退款渠道',
  `last_refund_store` varchar(32) COMMENT '最后退款门店',
  `last_refund_city` varchar(6) COMMENT '最后退款城市',
  `last_consume_deliver_center` varchar(32) COMMENT '最后消费配送中心代码',
  `last_deposit_deliver_center` varchar(32) COMMENT '最后充值配送中心代码',
  `last_refund_deliver_center` varchar(32) COMMENT '最后退款配送中心代码')
COMMENT '会员模块-营销标签汇总表'
PARTITIONED BY (
  `calcula_day` string)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
  'field.delim'='*',
  'line.delim'='\n',
  'serialization.format'='*')
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  'hdfs://nameservice1/user/hive/warehouse/ads.db/mem_market_tag_sum'
TBLPROPERTIES (
  'last_modified_by'='hive',
  'last_modified_time'='1527765781',
  'transient_lastDdlTime'='1527765781')