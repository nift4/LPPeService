.class Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;
.super Ljava/lang/Object;
.source "UdpServer.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/socket/base/UdpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LbsHidlDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/socket/base/UdpServer;


# direct methods
.method constructor <init>(Lcom/mediatek/socket/base/UdpServer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpServer;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/mediatek/socket/base/UdpServer;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpServer;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcom/mediatek/socket/base/UdpServer;->access$100(Lcom/mediatek/socket/base/UdpServer;J)V

    .line 68
    iget-object p1, p0, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;->this$0:Lcom/mediatek/socket/base/UdpServer;

    invoke-static {p1}, Lcom/mediatek/socket/base/UdpServer;->access$200(Lcom/mediatek/socket/base/UdpServer;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mediatek/socket/base/UdpServer;->access$300(Lcom/mediatek/socket/base/UdpServer;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    return-void
.end method
