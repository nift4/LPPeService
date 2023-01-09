.class Lcom/mediatek/location/lppe/main/LPPeService$2;
.super Landroid/content/BroadcastReceiver;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 509
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2100(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2200(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2300(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2400(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2500(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 523
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2600(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 526
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 527
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2700(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.location.PROVIDERS_CHANGED"

    .line 528
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 529
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2800(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "com.android.ims.IMS_SERVICE_UP"

    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, -0x1

    const-string v0, "android:phone_id"

    .line 533
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[lbs][ims] onReceive() ACTION_IMS_SERVICE_UP phoneId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    if-ltz p1, :cond_8

    .line 535
    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3000(Lcom/mediatek/location/lppe/main/LPPeService;)I

    move-result p2

    if-ge p1, p2, :cond_8

    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3100(Lcom/mediatek/location/lppe/main/LPPeService;)[Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    move-result-object p2

    aget-object p2, p2, p1

    if-nez p2, :cond_8

    .line 536
    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3100(Lcom/mediatek/location/lppe/main/LPPeService;)[Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    move-result-object p2

    new-instance v0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/main/LPPeService$1;)V

    aput-object v0, p2, p1

    .line 537
    iget-object p2, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3100(Lcom/mediatek/location/lppe/main/LPPeService;)[Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    move-result-object p2

    aget-object p2, p2, p1

    iput p1, p2, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    .line 538
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$2;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3100(Lcom/mediatek/location/lppe/main/LPPeService;)[Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->connectImsManager()V

    goto :goto_0

    :cond_8
    const-string p0, "[lbs][ims] ignore ACTION_IMS_SERVICE_UP due to already registered"

    .line 540
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[common] BroadcastReceiver.onReceive() receive an unhandle action=["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
