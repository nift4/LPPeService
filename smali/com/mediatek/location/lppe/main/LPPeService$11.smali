.class Lcom/mediatek/location/lppe/main/LPPeService$11;
.super Landroid/database/ContentObserver;


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
    .locals 1

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$11;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$11;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-virtual {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->lbsNlpStatusUpdate()V

    return-void
.end method
