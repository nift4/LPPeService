.class public Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;
.super Ljava/lang/Object;
.source "NetworkLocationMeasurement.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;


# instance fields
.field public accuracy:F

.field public accuracyValid:Z

.field public altitude:D

.field public altitudeValid:Z

.field public confidenceHorizontal:B

.field public confidenceHorizontalValid:Z

.field public confidenceVertical:B

.field public confidenceVerticalValid:Z

.field public latitude:D

.field public locationSource:I

.field public locationSourceValid:Z

.field public longitude:D

.field public time:J

.field public verticalAccuracy:F

.field public verticalAccuracyValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->_instance:Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    .line 22
    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    const/4 v2, 0x0

    .line 26
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    const/4 v3, 0x0

    .line 27
    iput v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    .line 31
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    .line 32
    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    .line 36
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    .line 37
    iput-byte v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    .line 48
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    .line 49
    iput v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    .line 53
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    .line 54
    iput v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    .line 58
    iput-boolean v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    .line 59
    iput-byte v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;
    .locals 2

    .line 148
    new-instance p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    .line 150
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    .line 151
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    .line 152
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    .line 153
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    .line 154
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    .line 155
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    .line 156
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    .line 157
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    .line 158
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    .line 159
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    .line 160
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    .line 161
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    .line 162
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    .line 163
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putLong(J)V

    .line 130
    iget-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putDouble(D)V

    .line 131
    iget-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putDouble(D)V

    .line 132
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 133
    iget v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putFloat(F)V

    .line 134
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 135
    iget-wide v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putDouble(D)V

    .line 136
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 137
    iget-byte v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    .line 138
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 139
    iget v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 140
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 141
    iget v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putFloat(F)V

    .line 142
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 143
    iget-byte p0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 68
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    if-nez v2, :cond_2

    return v0

    .line 72
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;

    .line 73
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    .line 75
    :cond_3
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    return v0

    .line 77
    :cond_4
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    return v0

    .line 79
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 81
    :cond_6
    iget v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    return v0

    .line 83
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 85
    :cond_8
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_9

    return v0

    .line 87
    :cond_9
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    if-eq v2, v3, :cond_a

    return v0

    .line 89
    :cond_a
    iget-byte v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    iget-byte v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    if-eq v2, v3, :cond_b

    return v0

    .line 91
    :cond_b
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    if-eq v2, v3, :cond_c

    return v0

    .line 93
    :cond_c
    iget v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    if-eq v2, v3, :cond_d

    return v0

    .line 95
    :cond_d
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    if-eq v2, v3, :cond_e

    return v0

    .line 97
    :cond_e
    iget v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    return v0

    .line 99
    :cond_f
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    if-eq v2, v3, :cond_10

    return v0

    .line 101
    :cond_10
    iget-byte p1, p1, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    iget-byte p0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    if-eq p1, p0, :cond_11

    return v0

    :cond_11
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkLocationMeasurement "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->latitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitude=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->longitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accuracyValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracyValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accuracy=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->accuracy:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "altitudeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitudeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "altitude=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->altitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidenceHorizontalValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontalValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidenceHorizontal=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceHorizontal:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationSourceValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSourceValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationSource=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->locationSource:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verticalAccuracyValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracyValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verticalAccuracy=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->verticalAccuracy:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidenceVerticalValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVerticalValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confidenceVertical=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lcom/mediatek/location/lppe/network/NetworkLocationMeasurement;->confidenceVertical:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
