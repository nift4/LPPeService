.class public Lcom/mediatek/location/lppe/wlan/WlanMeasurements;
.super Ljava/lang/Object;
.source "WlanMeasurements.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;


# instance fields
.field public apAG:Z

.field public apChanFreq:Z

.field public apDevType:Z

.field public apPhyType:Z

.field public apRSSI:Z

.field public apRTD:Z

.field public apRepLoc:Z

.field public apSN:Z

.field public apSSID:Z

.field public apTP:Z

.field public nonServing:Z

.field public oc:Z

.field public ueAG:Z

.field public ueRSSI:Z

.field public ueSN:Z

.field public ueTP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->_instance:Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    .line 18
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    .line 22
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    .line 26
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    .line 30
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    .line 38
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    .line 50
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    .line 54
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    .line 58
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    .line 62
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    .line 66
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    .line 70
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    .line 74
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanMeasurements;
    .locals 1

    .line 167
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    .line 169
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    .line 170
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    .line 171
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    .line 172
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    .line 173
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    .line 174
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    .line 175
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    .line 176
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    .line 177
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    .line 178
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    .line 179
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    .line 180
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    .line 181
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    .line 182
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    .line 183
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 149
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 150
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 151
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 152
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 153
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 154
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 155
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 156
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 157
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 158
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 159
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 160
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 161
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 162
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

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

    .line 83
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    if-nez v2, :cond_2

    return v0

    .line 87
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;

    .line 88
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 90
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 92
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 94
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 96
    :cond_6
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    if-eq v2, v3, :cond_7

    return v0

    .line 98
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 100
    :cond_8
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    if-eq v2, v3, :cond_9

    return v0

    .line 102
    :cond_9
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    if-eq v2, v3, :cond_a

    return v0

    .line 104
    :cond_a
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    if-eq v2, v3, :cond_b

    return v0

    .line 106
    :cond_b
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    if-eq v2, v3, :cond_c

    return v0

    .line 108
    :cond_c
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    if-eq v2, v3, :cond_d

    return v0

    .line 110
    :cond_d
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    if-eq v2, v3, :cond_e

    return v0

    .line 112
    :cond_e
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    if-eq v2, v3, :cond_f

    return v0

    .line 114
    :cond_f
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    if-eq v2, v3, :cond_10

    return v0

    .line 116
    :cond_10
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    if-eq v2, v3, :cond_11

    return v0

    .line 118
    :cond_11
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

    if-eq p1, p0, :cond_12

    return v0

    :cond_12
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanMeasurements "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonServing=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->nonServing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apSSID=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSSID:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apSN=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apSN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apDevType=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apDevType:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apPhyType=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apPhyType:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apRSSI=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRSSI:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apChanFreq=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apChanFreq:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apRTD=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRTD:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apRepLoc=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apRepLoc:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apTP=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apTP:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apAG=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->apAG:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ueTP=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueTP:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ueAG=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueAG:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ueSN=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueSN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ueRSSI=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->ueRSSI:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oc=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanMeasurements;->oc:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
