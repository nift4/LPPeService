.class public Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;
.super Ljava/lang/Object;
.source "BluetoothRTD.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$Codable;


# static fields
.field public static final _instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;


# instance fields
.field public accuracy:S

.field public unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-direct {v0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;-><init>()V

    sput-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    .line 15
    sget-object v1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;->microseconds:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    iput-object v1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    .line 19
    iput-short v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    return-void
.end method


# virtual methods
.method public decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;
    .locals 1

    .line 60
    new-instance p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    invoke-direct {p0}, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    .line 62
    sget-object v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;->_instance:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v0

    check-cast v0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    iput-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    .line 63
    invoke-virtual {p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result p1

    iput-short p1, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V
    .locals 1

    .line 53
    iget v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 54
    iget-object v0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    invoke-virtual {p1, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    .line 55
    iget-short p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    invoke-virtual {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

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

    .line 28
    :cond_1
    instance-of v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    if-nez v2, :cond_2

    return v0

    .line 32
    :cond_2
    check-cast p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;

    .line 33
    iget v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    iget v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    if-eq v2, v3, :cond_3

    return v0

    .line 35
    :cond_3
    iget-object v2, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 37
    :cond_4
    iget-short p1, p1, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    iget-short p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    if-eq p1, p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothRTD "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unit=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->unit:Lcom/mediatek/location/lppe/bluetooth/BluetoothRTDUnit;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accuracy=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Lcom/mediatek/location/lppe/bluetooth/BluetoothRTD;->accuracy:S

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
