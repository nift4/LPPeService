.class public Lcom/mediatek/location/lppe/wlan/WlanApCapability;
.super Ljava/lang/Object;
.source "WlanApCapability.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanApCapability;


# instance fields
.field public apMACAddress:[B

.field public apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanApCapability;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    .line 15
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;-><init>()V

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApCapability;
    .locals 1

    .line 53
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanApCapability;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    .line 55
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->_instance:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    iput-object p1, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 48
    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

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

    .line 24
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    if-nez v2, :cond_2

    return v0

    .line 28
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanApCapability;

    .line 29
    iget-object v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 31
    :cond_3
    iget-object p1, p1, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {p1, p0}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanApCapability "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apMACAddress=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apMACAddress:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apTypes=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApCapability;->apTypes:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
