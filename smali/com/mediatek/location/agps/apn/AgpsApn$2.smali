.class Lcom/mediatek/location/agps/apn/AgpsApn$2;
.super Landroid/os/Handler;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApn;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;Landroid/os/Looper;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 346
    :pswitch_0
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleWaitNetReadyTimeout(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto/16 :goto_0

    .line 343
    :pswitch_1
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleWaitNetReady(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleNinotify(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$200(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->handleReleaseDataConn()V

    goto :goto_0

    .line 370
    :pswitch_4
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$200(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->handleNetworkCallback(ILjava/lang/Object;)V

    goto :goto_0

    .line 367
    :pswitch_5
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$200(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->handleRequestDataConn(Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :pswitch_6
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleRemoveGpsIcon()V

    goto :goto_0

    .line 361
    :pswitch_7
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleRequestGpsIcon()V

    goto :goto_0

    .line 358
    :pswitch_8
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 355
    :pswitch_9
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleNetTimeout(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 352
    :pswitch_a
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleDnsQuery(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    goto :goto_0

    .line 349
    :pswitch_b
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->handleRequestNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
