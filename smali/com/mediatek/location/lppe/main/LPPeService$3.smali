.class Lcom/mediatek/location/lppe/main/LPPeService$3;
.super Ljava/lang/Object;
.source "LPPeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 551
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$3;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$3;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p1, p2}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3200(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$3;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3300(Lcom/mediatek/location/lppe/main/LPPeService;Landroid/hardware/SensorEvent;)V

    return-void
.end method
