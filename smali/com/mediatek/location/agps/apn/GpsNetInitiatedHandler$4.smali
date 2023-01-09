.class Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;
.super Landroid/os/Handler;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 433
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    iget-object p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    iget-object p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 437
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    iget-object v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCurNotif:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    iget v0, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 438
    invoke-static {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->access$000(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    iget-object v0, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCurNotif:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    iget v1, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget v0, v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-interface {p1, v1, v0}, Lcom/mediatek/location/agps/apn/NetInitiatedListener;->sendNiResponse(II)Z

    .line 442
    :cond_1
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mAlertDialog:Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
