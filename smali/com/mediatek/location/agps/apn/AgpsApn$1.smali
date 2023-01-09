.class Lcom/mediatek/location/agps/apn/AgpsApn$1;
.super Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApn;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Lcom/mediatek/location/agps/apn/Agps2FrameworkInterface$Agps2FrameworkInterfaceReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public AgpsNiNotify(ILcom/mediatek/location/agps/apn/AgpsNiType;Lcom/mediatek/location/agps/apn/AgpsNotifyType;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;Lcom/mediatek/location/agps/apn/AgpsNiEncodingType;)V
    .locals 5

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgpsNiNotify(), sessionId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", niType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notifyType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestorId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestorIdEncoding= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textEncoding= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 226
    iput p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 227
    sget-object p1, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iput p2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    goto :goto_0

    .line 235
    :cond_1
    iput v2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    goto :goto_0

    .line 232
    :cond_2
    iput v1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    goto :goto_0

    .line 229
    :cond_3
    iput v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    :goto_0
    const/4 p1, 0x0

    .line 242
    iput-boolean p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 243
    iput-boolean p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 244
    iput-boolean p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 246
    sget-object v4, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNotifyType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v4, p3

    if-eq p3, v3, :cond_7

    if-eq p3, v1, :cond_6

    if-eq p3, v2, :cond_5

    if-eq p3, p2, :cond_4

    goto :goto_1

    .line 263
    :cond_4
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    goto :goto_1

    .line 258
    :cond_5
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 259
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    goto :goto_1

    .line 253
    :cond_6
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 254
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    goto :goto_1

    .line 249
    :cond_7
    iput-boolean v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    :goto_1
    const/16 p3, 0x8

    .line 270
    iput p3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 271
    iput v2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 272
    iput-object p4, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 273
    iput-object p5, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 274
    sget-object p3, Lcom/mediatek/location/agps/apn/AgpsApn$4;->$SwitchMap$com$mediatek$location$agps$apn$AgpsNiEncodingType:[I

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p3, p4

    const/4 p5, -0x1

    const/4 p6, 0x5

    if-eq p4, v3, :cond_c

    if-eq p4, v1, :cond_b

    if-eq p4, v2, :cond_a

    if-eq p4, p2, :cond_9

    if-eq p4, p6, :cond_8

    .line 291
    iput p5, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    goto :goto_2

    .line 288
    :cond_8
    iput p2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    goto :goto_2

    .line 285
    :cond_9
    iput v2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    goto :goto_2

    .line 282
    :cond_a
    iput v1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    goto :goto_2

    .line 279
    :cond_b
    iput v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    goto :goto_2

    .line 276
    :cond_c
    iput p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 294
    :goto_2
    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    if-eq p3, v3, :cond_11

    if-eq p3, v1, :cond_10

    if-eq p3, v2, :cond_f

    if-eq p3, p2, :cond_e

    if-eq p3, p6, :cond_d

    .line 311
    iput p5, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    goto :goto_3

    .line 308
    :cond_d
    iput p2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    goto :goto_3

    .line 305
    :cond_e
    iput v2, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    goto :goto_3

    .line 302
    :cond_f
    iput v1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    goto :goto_3

    .line 299
    :cond_10
    iput v3, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    goto :goto_3

    .line 296
    :cond_11
    iput p1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 314
    :goto_3
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 p1, 0x6d

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public acquireWakeLock()V
    .locals 1

    const-string v0, "acquireWakeLock()"

    .line 163
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$100(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public isExist(B)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExist() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$002(Lcom/mediatek/location/agps/apn/AgpsApn;B)B

    return-void
.end method

.method public releaseC2kApn()V
    .locals 2

    const-string v0, "releaseC2kApn()"

    .line 212
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v0, 0x6c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public releaseDedicatedApn()V
    .locals 2

    const-string v0, "releaseDedicatedApn()"

    .line 187
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public releaseWakeLock()V
    .locals 1

    const-string v0, "releaseWakeLock()"

    .line 169
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$100(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public removeGpsIcon()V
    .locals 2

    const-string v0, "removeGpsIcon()"

    .line 199
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestC2kApn([BZ)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestC2kApn(), addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {v0, v1, p1, p2}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn;[BZ)V

    .line 207
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestDedicatedApnAndDnsQuery(Ljava/lang/String;ZZ)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDedicatedApnAndDnsQuery() fqdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isEsupl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSuplApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn;Ljava/lang/String;ZZ)V

    .line 182
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 p1, 0x6e

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestGpsIcon()V
    .locals 2

    const-string v0, "requestGpsIcon"

    .line 193
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
