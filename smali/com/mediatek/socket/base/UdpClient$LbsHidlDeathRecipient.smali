.class Lcom/mediatek/socket/base/UdpClient$LbsHidlDeathRecipient;
.super Ljava/lang/Object;
.source "UdpClient.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/socket/base/UdpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LbsHidlDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/socket/base/UdpClient;


# direct methods
.method constructor <init>(Lcom/mediatek/socket/base/UdpClient;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mediatek/socket/base/UdpClient$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mediatek/socket/base/UdpClient$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpClient;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/socket/base/UdpClient;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    return-void
.end method
