.class public Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;
.super Ljava/lang/Object;
.source "IpAddressInformation.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;


# instance fields
.field public list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->_instance:Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    .line 14
    iput-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;
    .locals 1

    .line 48
    new-instance p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;-><init>()V

    .line 49
    sget-object v0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->_instance:Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->getArray([Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 43
    iget-object p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayCodable([Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 23
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    if-nez v2, :cond_2

    return v0

    .line 27
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;

    .line 28
    iget-object p1, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    iget-object p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpAddressInformation "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddressInformation;->list:[Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
