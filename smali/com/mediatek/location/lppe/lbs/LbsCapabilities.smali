.class public Lcom/mediatek/location/lppe/lbs/LbsCapabilities;
.super Ljava/lang/Object;
.source "LbsCapabilities.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/lbs/LbsCapabilities;


# instance fields
.field public batteryInfo:Z

.field public imei:Ljava/lang/String;

.field public suplInitOverSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->_instance:Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    .line 16
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/lbs/LbsCapabilities;
    .locals 1

    .line 59
    new-instance p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    .line 61
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    .line 62
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 52
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 54
    iget-object p0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putString(Ljava/lang/String;)V

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

    .line 26
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    if-nez v2, :cond_2

    return v0

    .line 30
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;

    .line 31
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 33
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 35
    :cond_4
    iget-object p1, p1, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    iget-object p0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->imei:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LbsCapabilities "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suplInitOverSms=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->suplInitOverSms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryInfo=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/lbs/LbsCapabilities;->batteryInfo:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "imei=[***] "

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
