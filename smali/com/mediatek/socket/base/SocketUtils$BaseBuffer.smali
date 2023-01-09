.class public Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/socket/base/SocketUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBuffer"
.end annotation


# instance fields
.field private mBuff:[B

.field private mOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    .line 36
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    return-void
.end method

.method private assertNotNull(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "assertNotNull() failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getArrayByte()[B
    .locals 5

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 257
    new-array v1, v0, [B

    .line 258
    iget-object v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v3, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return-object v1
.end method

.method public getArrayCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)[Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 319
    new-array v1, v0, [Lcom/mediatek/socket/base/SocketUtils$Codable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBool()Z
    .locals 0

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getBuff()[B
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    return-object p0
.end method

.method public getByte()B
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 194
    iput v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return v0
.end method

.method public getCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)Lcom/mediatek/socket/base/SocketUtils$Codable;
    .locals 0

    .line 243
    invoke-interface {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$Codable;->decode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)Lcom/mediatek/socket/base/SocketUtils$Codable;

    move-result-object p0

    return-object p0
.end method

.method public getDouble()D
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getLong()J

    move-result-wide v0

    .line 226
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 0

    .line 220
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    .line 221
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public getInt()I
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getShort()S

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public getLong()J
    .locals 4

    .line 214
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    .line 215
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getOffset()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return p0
.end method

.method public getShort()S
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v0, v0, 0x0

    int-to-short v0, v0

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getByte()B

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->getInt()I

    move-result v0

    .line 231
    new-array v1, v0, [B

    .line 232
    iget-object v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v3, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    .line 235
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "utf8"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public putArrayByte([B)V
    .locals 4

    .line 126
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->assertNotNull(Ljava/lang/Object;)V

    .line 127
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return-void
.end method

.method public putArrayCodable([Lcom/mediatek/socket/base/SocketUtils$Codable;)V
    .locals 2

    .line 181
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->assertNotNull(Ljava/lang/Object;)V

    .line 182
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x0

    .line 183
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 184
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putBool(Z)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    return-void
.end method

.method public putByte(B)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 74
    iput v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return-void
.end method

.method public putCodable(Lcom/mediatek/socket/base/SocketUtils$Codable;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->assertNotNull(Ljava/lang/Object;)V

    .line 114
    invoke-interface {p1, p0}, Lcom/mediatek/socket/base/SocketUtils$Codable;->encode(Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;)V

    return-void
.end method

.method public putDouble(D)V
    .locals 0

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putLong(J)V

    return-void
.end method

.method public putFloat(F)V
    .locals 0

    .line 93
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    return-void
.end method

.method public putInt(I)V
    .locals 2

    const v0, 0xffff

    and-int v1, p1, v0

    int-to-short v1, v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    shr-int/lit8 p1, p1, 0x10

    and-int/2addr p1, v0

    int-to-short p1, p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putShort(S)V

    return-void
.end method

.method public putLong(J)V
    .locals 4

    const-wide/16 v0, -0x1

    and-long v2, p1, v0

    long-to-int v2, v2

    .line 88
    invoke-virtual {p0, v2}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p1, p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    return-void
.end method

.method public putShort(S)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putByte(B)V

    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 4

    .line 101
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->assertNotNull(Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "utf8"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 104
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->putInt(I)V

    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    iget v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseBuffer "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxSize=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;->mBuff:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
