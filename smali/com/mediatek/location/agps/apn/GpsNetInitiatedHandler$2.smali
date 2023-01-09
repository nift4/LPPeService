.class Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->openNiDialog(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
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

    .line 408
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 410
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-static {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->access$000(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    move-result-object p1

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCurNotif:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    iget p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/mediatek/location/agps/apn/NetInitiatedListener;->sendNiResponse(II)Z

    return-void
.end method
