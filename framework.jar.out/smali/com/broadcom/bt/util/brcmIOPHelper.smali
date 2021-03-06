.class public Lcom/broadcom/bt/util/brcmIOPHelper;
.super Ljava/lang/Object;
.source "brcmIOPHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final IOPHelperCategoryAll:I = 0x1


# instance fields
.field m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.brcm.bt.app.IOPDB.BTIOPService.1"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, brcmIOPSrvIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public BrcmIOPHelperGetDevList()V
    .locals 0

    .prologue
    return-void
.end method

.method public getIOPDevInfoList(I)[Lcom/broadcom/bt/service/iop/DevInfo;
    .locals 2
    .parameter "nCategory"

    .prologue
    const/4 v0, 0x0

    .local v0, ret:[Lcom/broadcom/bt/service/iop/DevInfo;
    iget-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/iop/IBTIOPService;->getIOPDeviceList(I)[Lcom/broadcom/bt/service/iop/DevInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    invoke-static {p2}, Lcom/broadcom/bt/service/iop/IBTIOPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/iop/IBTIOPService;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/brcmIOPHelper;->m_iopService:Lcom/broadcom/bt/service/iop/IBTIOPService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    return-void
.end method
