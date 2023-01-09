.class public Lcom/mediatek/location/lppe/wlan/WlanApADSupported;
.super Ljava/lang/Object;
.source "WlanApADSupported.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;


# instance fields
.field public antennaGain:Z

.field public aplist:Z

.field public aplocation:Z

.field public coverageArea:Z

.field public locationreliability:Z

.field public nonServing:Z

.field public transmitPower:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->_instance:Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    .line 18
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    .line 22
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    .line 26
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApADSupported;
    .locals 1

    .line 98
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    .line 100
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    .line 101
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    .line 102
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    .line 103
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    .line 104
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    .line 105
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 88
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 89
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 90
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 91
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 92
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 93
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

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

    .line 50
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    if-nez v2, :cond_2

    return v0

    .line 54
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;

    .line 55
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 57
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 59
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 61
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 63
    :cond_6
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    if-eq v2, v3, :cond_7

    return v0

    .line 65
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 67
    :cond_8
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    if-eq p1, p0, :cond_9

    return v0

    :cond_9
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanApADSupported "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aplist=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aplocation=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->aplocation:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationreliability=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->locationreliability:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transmitPower=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->transmitPower:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antennaGain=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->antennaGain:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coverageArea=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->coverageArea:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nonServing=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanApADSupported;->nonServing:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
