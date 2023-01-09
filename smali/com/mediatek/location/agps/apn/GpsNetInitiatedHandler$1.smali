.class Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 136
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.MODE_CHANGED"

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-virtual {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->updateLocationMode()V

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "location enabled :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;->this$0:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;

    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GpsNetInitiatedHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
