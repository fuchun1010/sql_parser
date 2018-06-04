CREATE TABLE `mem_market_tag_datail_record`(
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
  `register_duration` int COMMENT '注册时长',
  `member_level_id` int COMMENT '会员等级ID',
  `member_level_name` varchar(32) COMMENT '会员等级',
  `register_store_name` varchar(64) COMMENT '注册门店',
  `register_store` varchar(32) COMMENT '注册门店代码',
  `first_login_store_name` varchar(64) COMMENT '首次访问门店',
  `first_login_store` varchar(32) COMMENT '首次访问门店代码',
  `register_city_name` varchar(6) COMMENT '注册城市',
  `register_deliver_center_name` varchar(64) COMMENT '注册配送中心名称',
  `register_deliver_center` varchar(32) COMMENT '注册配送中心代码',
  `register_channel_name` varchar(64) COMMENT '注册渠道',
  `register_channel` varchar(32) COMMENT '注册渠道代码',
  `busi_type` char(1) COMMENT '业务类型 C:消费 D:充值 R:退款 I:积分',
  `deal_serial_num` varchar(32) COMMENT '交易序号',
  `deposit_amt` int COMMENT '充值金额',
  `refund_amt` int COMMENT '退款金额',
  `pay_way` varchar(64) COMMENT '支付方式',
  `consume_store_name` varchar(64) COMMENT '消费门店',
  `consume_store` varchar(32) COMMENT '消费门店代码',
  `consume_city_name` varchar(6) COMMENT '消费城市',
  `consume_deliver_center_name` varchar(64) COMMENT '消费配送中心',
  `consume_deliver_center` varchar(32) COMMENT '消费配送中心代码',
  `consume_channel_name` varchar(64) COMMENT '消费渠道',
  `consume_channel` varchar(32) COMMENT '消费渠道代码',
  `coupon_name` char(1) COMMENT '优惠券定义名称',
  `coupon_batch_num` varchar(32) COMMENT '优惠券批次',
  `consume_amt` int COMMENT '消费金额',
  `shop_cycle` int COMMENT '购物周期',
  `shop_period` int COMMENT '购物时段',
  `refund_time` varchar(14) COMMENT '退款日期',
  `consume_time` varchar(14) COMMENT '消费日期',
  `deposit_time` varchar(14) COMMENT '充值日期',
  `single_integral_value` int COMMENT '单笔积分值',
  `single_integral_expire_time` varchar(14) COMMENT '单笔积分过期日期',
  `single_integral_create_time` varchar(14) COMMENT '单笔积分领取日期',
  `itemcode` varchar(15) COMMENT '单品代码',
  `itemname` varchar(64) COMMENT '单品名称',
  `middle_type_code` varchar(15) COMMENT '中类代码',
  `middle_type_name` varchar(64) COMMENT '中类名称',
  `small_type_code` varchar(15) COMMENT '小类代码(消费品类)',
  `small_item_name` varchar(60) COMMENT '小类名称(消费品类)',
  `consume_cnt` int COMMENT '消费次数',
  `refund_cnt` int COMMENT '退款次数',
  `deposit_cnt` int COMMENT '充值次数')
COMMENT '会员模块-营销标签明细记录表'
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
  'hdfs://nameservice1/user/hive/warehouse/ads.db/mem_market_tag_datail_record'
TBLPROPERTIES (
  'transient_lastDdlTime'='1524642192')