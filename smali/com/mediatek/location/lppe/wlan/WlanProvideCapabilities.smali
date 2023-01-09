.class public Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;
.super Ljava/lang/Object;
.source "WlanProvideCapabilities.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;


# instance fields
.field public apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

.field public apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

.field public apCapabilityValid:Z

.field public isWlanSupported:Z

.field public measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

.field public ueMACAddress:[B

.field public wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

.field public wlanTypesSupportedValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->_instance:Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    .line 26
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    .line 27
    new-instance v1, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/wlan/WlanApCapability;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    .line 32
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    .line 33
    new-instance v1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    .line 37
    new-instance v1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-direct {v1}, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;-><init>()V

    iput-object v1, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    .line 47
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;-><init>()V

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;
    .locals 1

    .line 109
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    .line 111
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    .line 112
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    .line 113
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    .line 114
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->_instance:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    .line 115
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    .line 116
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    .line 117
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->_instance:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    iput-object p1, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 97
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 99
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 101
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 103
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 104
    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    if-nez v2, :cond_2

    return v0

    .line 60
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;

    .line 61
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 63
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 65
    :cond_4
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-virtual {v2, v3}, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 67
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 69
    :cond_6
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {v2, v3}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 71
    :cond_7
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-virtual {v2, v3}, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    .line 73
    :cond_8
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    .line 75
    :cond_9
    iget-object p1, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-virtual {p1, p0}, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanProvideCapabilities "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWlanSupported=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->isWlanSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apCapabilityValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapabilityValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apCapability=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apCapability:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanTypesSupportedValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupportedValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wlanTypesSupported=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->wlanTypesSupported:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apADSupported=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->apADSupported:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ueMACAddress=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->ueMACAddress:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measSupported=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideCapabilities;->measSupported:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
