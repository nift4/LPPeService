.class public Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;
.super Ljava/lang/Object;
.source "WlanProvideMeasurement.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;


# instance fields
.field public meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->_instance:Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    .line 18
    iput-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;
    .locals 1

    .line 52
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;-><init>()V

    .line 53
    sget-object v0, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;->getArray([Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 47
    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

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

    .line 27
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    if-nez v2, :cond_2

    return v0

    .line 31
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;

    .line 32
    iget-object p1, p1, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanProvideMeasurement "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meas=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/wlan/WlanProvideMeasurement;->meas:[Lcom/mediatek/location/lppe/wlan/WlanApMeasurement;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
