.class public Lcom/mediatek/socket/base/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;,
        Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;,
        Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;,
        Lcom/mediatek/socket/base/SocketUtils$Codable;
    }
.end annotation


# direct methods
.method public static assertSize(Ljava/lang/Object;II)V
    .locals 5

    .line 335
    instance-of v0, p0, [Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    check-cast p0, [Z

    array-length v1, p0

    goto/16 :goto_1

    .line 337
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 338
    check-cast p0, [B

    array-length v1, p0

    goto/16 :goto_1

    .line 339
    :cond_1
    instance-of v0, p0, [S

    if-eqz v0, :cond_2

    .line 340
    check-cast p0, [S

    array-length v1, p0

    goto/16 :goto_1

    .line 341
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    .line 342
    check-cast p0, [I

    array-length v1, p0

    goto :goto_1

    .line 343
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    .line 344
    check-cast p0, [J

    array-length v1, p0

    goto :goto_1

    .line 345
    :cond_4
    instance-of v0, p0, [F

    if-eqz v0, :cond_5

    .line 346
    check-cast p0, [F

    array-length v1, p0

    goto :goto_1

    .line 347
    :cond_5
    instance-of v0, p0, [D

    if-eqz v0, :cond_6

    .line 348
    check-cast p0, [D

    array-length v1, p0

    goto :goto_1

    .line 349
    :cond_6
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 350
    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    .line 351
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_8

    aget-object v3, p0, v1

    .line 352
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, p2, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "your string.length="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is more than maxSize2="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move v1, v0

    goto :goto_1

    .line 357
    :cond_9
    instance-of p2, p0, [Ljava/lang/Object;

    if-eqz p2, :cond_a

    .line 358
    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    goto :goto_1

    .line 359
    :cond_a
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 360
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_b
    :goto_1
    if-gt v1, p1, :cond_c

    return-void

    .line 364
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "your size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is more than maxSize="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
