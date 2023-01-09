.class public Lcom/mediatek/socket/base/UdpServer;
.super Ljava/lang/Object;
.source "UdpServer.java"

# interfaces
.implements Lcom/mediatek/socket/base/SocketUtils$UdpServerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;,
        Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;
    }
.end annotation


# instance fields
.field private mBuff:Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

.field private mChannelName:Ljava/lang/String;

.field private mIsLocalSocket:Z

.field private mLLbsHidlDeathRecipient:Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;

.field private mLbsHidlCallback:Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;

.field mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

.field private mNamespace:Landroid/net/LocalSocketAddress$Namespace;

.field private mNetSocket:Ljava/net/DatagramSocket;

.field mReceiver:Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;-><init>(Lcom/mediatek/socket/base/UdpServer;)V

    iput-object v0, p0, Lcom/mediatek/socket/base/UdpServer;->mLbsHidlCallback:Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;

    .line 60
    new-instance v0, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;

    invoke-direct {v0, p0}, Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;-><init>(Lcom/mediatek/socket/base/UdpServer;)V

    iput-object v0, p0, Lcom/mediatek/socket/base/UdpServer;->mLLbsHidlDeathRecipient:Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/mediatek/socket/base/UdpServer;->mIsLocalSocket:Z

    .line 101
    new-instance v0, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    invoke-direct {v0, p3}, Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/socket/base/UdpServer;->mBuff:Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    .line 102
    iput-object p1, p0, Lcom/mediatek/socket/base/UdpServer;->mChannelName:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/mediatek/socket/base/UdpServer;->mNamespace:Landroid/net/LocalSocketAddress$Namespace;

    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/UdpServer;->lbsHidlInit(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/socket/base/UdpServer;)Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mediatek/socket/base/UdpServer;->mBuff:Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/socket/base/UdpServer;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/mediatek/socket/base/UdpServer;->msleep(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/socket/base/UdpServer;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mediatek/socket/base/UdpServer;->mChannelName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mediatek/socket/base/UdpServer;Ljava/lang/String;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/mediatek/socket/base/UdpServer;->lbsHidlInit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static covertArrayListToByteArray(Ljava/util/ArrayList;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lbsHidlInit(Ljava/lang/String;)Z
    .locals 3

    .line 75
    :try_start_0
    invoke-static {p1}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/socket/base/UdpServer;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 76
    iget-object v0, p0, Lcom/mediatek/socket/base/UdpServer;->mLLbsHidlDeathRecipient:Lcom/mediatek/socket/base/UdpServer$LbsHidlDeathRecipient;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 78
    iget-object p1, p0, Lcom/mediatek/socket/base/UdpServer;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    iget-object p0, p0, Lcom/mediatek/socket/base/UdpServer;->mLbsHidlCallback:Lcom/mediatek/socket/base/UdpServer$LbsHidlCallback;

    invoke-interface {p1, p0}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->setCallback(Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private msleep(J)V
    .locals 0

    .line 206
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/mediatek/socket/base/UdpServer;->mIsLocalSocket:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/mediatek/socket/base/UdpServer;->mNetSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    :goto_0
    return-void
.end method

.method public getBuff()Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/mediatek/socket/base/UdpServer;->mBuff:Lcom/mediatek/socket/base/SocketUtils$BaseBuffer;

    return-object p0
.end method

.method public setReceiver(Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mediatek/socket/base/UdpServer;->mReceiver:Lcom/mediatek/socket/base/SocketUtils$ProtocolHandler;

    return-void
.end method
