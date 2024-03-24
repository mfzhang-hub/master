T: Topology info tag  拓扑信息标记
  Bus=01 Bus number   表示总线号
 Lev=01 Level in topology for this bus  表示此USB设备位于所在总线拓扑结构的层次，XHCI控制器对应的Lev=00，其下面挂接的USB网卡的Lev=01 
Prnt=00  Parent DeviceNumber 表示父设备数量，比如XHCI控制器是root，位于最顶层，其Prnt=0，其下面挂载在HUB下的USB网卡的Prnt=01
Port=00 Connector/Port on Parent for this device 此USB设备的父设备上的连接器/端口，比如USB网卡的父设备是XHCI控制器
Cnt=00 Count of devices at this level 这层的枚举到的第几个USB设备，比如USB网卡的Cnt=01
Dev#=  1 DeviceNumber 表示设备编号，XHCI为1，USB网卡为5，按顺序排列的，一个总线上最多挂127个；可以有多个总线
Spd=480  Device Speed in Mbps 设备速率，单位为Mbps
MxCh=12 MaxChildren 当前设备可连接的子设备最大数量，比如XHCI的MxCh=1表示XHCI下可以连接一个USB设备

B:  Bandwidth(带宽信息)
Alloc=  0/800 us ( 0%),  Total Bandwidth allocated to this bus 该总线分配得到的带宽。宽带分配在使用中是一个近似值，此值表示一帧需要多少ms
#Int=  0,  Number of interrupt requests 中断请求数
#Iso=  0  Number of isochronous requests  同步请求数，USB有四大传输，中断、控制、批量和同步

D:  Device descriptor info(设备描述符信息)
Ver= 2.00  Device USB version USB协议版本
Cls=09(hub  )  DeviceClass  由USB-IF(USB Implementers Forum)分配的设备类类码，Hub对应09；厂家自定义的为ff；如果该字段为0x00，表示由接口描述符bInterfaceClass来指定（https://www.usb.org/defined-class-codes）
Sub=00  DeviceSubClass  设备子类，USB子类代码，由USB-IF分配
Prot=01  DeviceProtocol 设备协议码，由USB-IF分配。如果D的Cls和Sub都为00，则该字段也必须为00，采用I的Prot=50
MxPS=64   MaxPacketSize of Default Endpoint  控制端点的最大包大小
#Cfgs=  1 NumberConfigurations 配置数字1或2 

P:  Product ID info(产品ID信息)
Vendor=1d6b Vendor ID code   厂商ID
ProdID=0002  Product ID code  厂商产品的ID
Rev= 4.15   Product revision number  产品版本号

S: String descriptors（字符串描述信息）
 Manufacturer=Linux 4.15.0-142-generic xhci-hcd  从设备中读到的生产商描述性信息
Product=xHCI Host Controller  从设备中读取的产品描述性信息
SerialNumber=0000:00:14.0  从设备中读取的产品序列号

C:Config info tag 
* "*" indicates the active configuration (others are " ") 标识活动配置为其他
 #Ifs= 1  NumberOfInterfaces   此配置支持的USB接口数量，每个配置有一个或多个接口组成，每个接口具有独特的功能，并且绑定到不同的USB设备驱动
Cfg#= 1  ConfiguratioNumber  此配置配置数量
Atr=e0  Attributes  属性，供电配置，位详细定义如下 ：D7 保留，必须置1；D6 自供电模式；D5 远程唤醒；​ D4～D0 保留；0xe0: 1110 0000；0xa0: 1010 0000
MxPwr=  0mA MaxPower in mA 最大功耗，以2mA为单位，例如0x32为50*2=100mA。 USB设备供电有两种方式，self-powered和bus-powered两种方式，驱动代码会判断设备标志寄存器是否过流的。最大500mA

I:Interface descriptor info(接口描述符信息)
* "*" indicates the active configuration (others are " ") 标识活动配置为其他
If#= 0 InterfaceNumber 该接口编号，接口编号从0开始分配，当一个配置有多个接口时，就用该字段来区分不同的接口
Alt= 0  AlternateSettingNumber USB设备配置与USB配置描述符是一一对应的, 即一个配置只能有一个配置描述符
#EPs= 1  NumberOfEndpoints  端点数量，不包括端点0。USB网卡这里的Alt=3(不包括Endpoint0)
Cls=09(hub  )  InterfaceClass 接口类码，比如HUB的为09h，USB-IF分配的类代码，0预览未来使用，0xFF表示接口类是厂家自定义，其他值由USB-IF指定
Sub=00  InterfaceSubClass  接口子类码。USB-IF分配的子类代码，由Cls限制
Prot=00 InterfaceProtocol  接口的协议，如果一个接口支持特定类请求，此代码标识由特定设备类定义的协议，如果该字段为0，设备部在此接口不使特定类的协议，如果该字段为0xFF，设备为此接口使用厂家自定义协议
Driver=hub  Driver name or "(none)"  驱动名字

E:Endpoint descriptor info(端点描述符信息) 
 Ad=81(I)  EndpointAddress(I=In,O=Out)  端点地址(I=In，O=out)
Atr=03(Int.)   Attributes(EndpointType)   端点属性
MxPS=   4  EndpointMaxPacketSize  端点所支持最大数据包的长度
Ivl=256ms  Interval (max) between transfers 端点数据传输的访问时间间隔。对于全速/低速的中断端点，取值范围为 1~255，对于高速中断端点，取值范围为1-16，详细定义可以参考USB协议。比如HUB的Ivl=256ms

