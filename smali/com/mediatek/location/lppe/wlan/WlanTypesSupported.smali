.class public Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;
.super Ljava/lang/Object;
.source "WlanTypesSupported.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;


# instance fields
.field public ieee802_11a:Z

.field public ieee802_11ac:Z

.field public ieee802_11ad:Z

.field public ieee802_11b:Z

.field public ieee802_11g:Z

.field public ieee802_11n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->_instance:Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    .line 12
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    .line 13
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    .line 15
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    .line 16
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;
    .locals 1

    .line 69
    new-instance p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    .line 71
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    .line 72
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    .line 73
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    .line 74
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    .line 75
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 60
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 61
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 62
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 64
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

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

    .line 25
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    if-nez v2, :cond_2

    return v0

    .line 29
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;

    .line 30
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 32
    :cond_3
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    if-eq v2, v3, :cond_4

    return v0

    .line 34
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 36
    :cond_5
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    if-eq v2, v3, :cond_6

    return v0

    .line 38
    :cond_6
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    if-eq v2, v3, :cond_7

    return v0

    .line 40
    :cond_7
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

    if-eq p1, p0, :cond_8

    return v0

    :cond_8
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanTypesSupported "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ieee802_11a=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ieee802_11b=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11b:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ieee802_11g=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11g:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ieee802_11n=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11n:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ieee802_11ac=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ac:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ieee802_11ad=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/wlan/WlanTypesSupported;->ieee802_11ad:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
