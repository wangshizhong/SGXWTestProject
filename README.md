1.本项目使用MVC架构思想

2.MVC 分为View，Model,Controller 三层，Helper和Request 用于逻辑处理

3.瘦身Controller,采用TableView继承与NSObject的方式进行View迁移。

4.采用delegate协议，消息转发机制实现多态进行Model配置，只要遵守WSZViewModelProtocol协议，即可参与cell配置，

5.网络请求基于AFN框架配置类似于猿题库的请求机制。

  5.1 如果需要请求api则需要继承与WSZBaseRequest，WSZBaseREquest遵守两个协议WSZBaseRequestProtocol,WSZBaseRequestConfigProtocol。
WSZBaseRequestProtocol:startRequestWithComplete 用于发起网络请求，WSZBaseRequestConfigProtocol 则用于配置网络请求，

  5.2 WSZBaseRequest 可以再这一层加容错处理，也可以在这一层做数据存储。

  5.3 startRequestWithComplete 则通过WSZNetBaseRequestManager 发起网络请求。

  5.4 WSZBaseResponseError 网络错误封装

  5.5 WSZBaseCommonInfo  对所有共参的配置


6. WSZNetworkUtility 可以展示网络的即时状态，待扩展。
