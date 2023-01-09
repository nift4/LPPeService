.class public Lcom/mediatek/location/lppe/ipaddr/IpAddress;
.super Ljava/lang/Object;
.source "IpAddress.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/ipaddr/IpAddress;


# instance fields
.field public bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

.field public ipv4:[B

.field public ipv4Valid:Z

.field public ipv6:[B

.field public ipv6Valid:Z

.field public nat:Z

.field public natValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->_instance:Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    new-array v1, v0, [B

    .line 15
    iput-object v1, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    .line 16
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    new-array v1, v0, [B

    .line 17
    iput-object v1, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    .line 18
    sget-object v1, Lcom/mediatek/location/lppe/ipaddr/Bearer;->unknown:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    iput-object v1, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 19
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    .line 20
    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/IpAddress;
    .locals 1

    .line 79
    new-instance p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    .line 81
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    .line 82
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    .line 83
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getArrayByte()[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    .line 84
    sget-object v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;->_instance:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/ipaddr/Bearer;

    iput-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    .line 85
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    .line 86
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getBool()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 67
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 68
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 69
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 70
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    const/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lcom/mediatek/socket/base/SocketUtils;->assertSize(Ljava/lang/Object;II)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putArrayByte([B)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 73
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putBool(Z)V

    .line 74
    iget-boolean p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

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

    .line 29
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    if-nez v2, :cond_2

    return v0

    .line 33
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    .line 34
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    if-eq v2, v3, :cond_3

    return v0

    .line 36
    :cond_3
    iget-object v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 38
    :cond_4
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    if-eq v2, v3, :cond_5

    return v0

    .line 40
    :cond_5
    iget-object v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    .line 42
    :cond_6
    iget-object v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 44
    :cond_7
    iget-boolean v2, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    if-eq v2, v3, :cond_8

    return v0

    .line 46
    :cond_8
    iget-boolean p1, p1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

    if-eq p1, p0, :cond_9

    return v0

    :cond_9
    return v1
.end method

.method public getArray([Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/location/lppe/ipaddr/IpAddress;
    .locals 2

    .line 92
    array-length p0, p1

    new-array p0, p0, [Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    const/4 v0, 0x0

    .line 93
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 94
    aget-object v1, p1, v0

    check-cast v1, Lcom/mediatek/location/lppe/ipaddr/IpAddress;

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpAddress "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipv4Valid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4Valid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipv4=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv4:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipv6Valid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6Valid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipv6=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->ipv6:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bearer=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->bearer:Lcom/mediatek/location/lppe/ipaddr/Bearer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "natValid=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->natValid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nat=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/mediatek/location/lppe/ipaddr/IpAddress;->nat:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
