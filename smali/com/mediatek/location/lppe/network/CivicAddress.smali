.class public Lcom/mediatek/location/lppe/network/CivicAddress;
.super Ljava/lang/Object;
.source "CivicAddress.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/network/CivicAddress;


# instance fields
.field public adminArea:Ljava/lang/String;

.field public adminAreaValid:Z

.field public countryCode:Ljava/lang/String;

.field public countryCodeValid:Z

.field public latitude:D

.field public latitudeValid:Z

.field public locality:Ljava/lang/String;

.field public localityValid:Z

.field public longitude:D

.field public longitudeValid:Z

.field public postalCode:Ljava/lang/String;

.field public postalCodeValid:Z

.field public subAdminArea:Ljava/lang/String;

.field public subAdminAreaValid:Z

.field public subthoroughfare:Ljava/lang/String;

.field public subthoroughfareValid:Z

.field public thoroughfare:Ljava/lang/String;

.field public thoroughfareValid:Z

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/mediatek/location/lppe/network/CivicAddress;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/network/CivicAddress;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/network/CivicAddress;->_instance:Lcom/mediatek/location/lppe/network/CivicAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    const-string v1, ""

    .line 20
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    .line 24
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    .line 25
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    .line 29
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    .line 30
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    .line 35
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    .line 40
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    .line 45
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    .line 54
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    .line 55
    iput-wide v2, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    .line 59
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    .line 60
    iput-object v1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/network/CivicAddress;
    .locals 2

    .line 172
    new-instance p0, Lcom/mediatek/location/lppe/network/CivicAddress;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/network/CivicAddress;-><init>()V

    .line 173
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    .line 174
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    .line 175
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    .line 177
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    .line 179
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    .line 181
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    .line 183
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    .line 185
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    .line 187
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    .line 188
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    .line 189
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    .line 190
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    .line 191
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/network/CivicAddress;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/network/CivicAddress;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 5

    .line 142
    iget-wide v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putLong(J)V

    .line 143
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 148
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 155
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    const/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 160
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 162
    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    invoke-virtual {p1, v3, v4}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putDouble(D)V

    .line 163
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 164
    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    invoke-virtual {p1, v3, v4}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putDouble(D)V

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 166
    iget-object v0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 167
    iget-object p0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

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

    .line 69
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;

    if-nez v2, :cond_2

    return v0

    .line 73
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/network/CivicAddress;

    .line 74
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    .line 76
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 78
    :cond_4
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 80
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 82
    :cond_6
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 84
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 86
    :cond_8
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    .line 88
    :cond_9
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    if-eq v2, v3, :cond_a

    return v0

    .line 90
    :cond_a
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v0

    .line 92
    :cond_b
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    if-eq v2, v3, :cond_c

    return v0

    .line 94
    :cond_c
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v0

    .line 96
    :cond_d
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    if-eq v2, v3, :cond_e

    return v0

    .line 98
    :cond_e
    iget-object v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    .line 100
    :cond_f
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    if-eq v2, v3, :cond_10

    return v0

    .line 102
    :cond_10
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_11

    return v0

    .line 104
    :cond_11
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    if-eq v2, v3, :cond_12

    return v0

    .line 106
    :cond_12
    iget-wide v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    iget-wide v4, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_13

    return v0

    .line 108
    :cond_13
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    if-eq v2, v3, :cond_14

    return v0

    .line 110
    :cond_14
    iget-object p1, p1, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    iget-object p0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CivicAddress "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCodeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCode=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminAreaValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminAreaValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->adminArea:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subAdminAreaValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminAreaValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subAdminArea=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subAdminArea:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localityValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->localityValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locality=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->locality:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postalCodeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCodeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postalCode=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->postalCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thoroughfareValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfareValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thoroughfare=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->thoroughfare:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitudeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitudeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->latitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitudeValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitudeValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitude=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->longitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subthoroughfareValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfareValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subthoroughfare=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/lppe/network/CivicAddress;->subthoroughfare:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
