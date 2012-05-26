.class public Lcom/android/settings/cit/CitSdCardPluginDetectActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitSdCardPluginDetectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;
    }
.end annotation


# instance fields
.field private mMountButton:Landroid/widget/Button;

.field private mMountService:Landroid/os/storage/IMountService;

.field protected mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSdTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->unmountSdCard()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mountSdCard()V

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountService:Landroid/os/storage/IMountService;

    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090512

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mountSdCard()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const v3, 0x7f090568

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private unmountSdCard()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v2, v1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const v3, 0x7f090568

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09052f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTestPanelView()I
    .locals 1

    .prologue
    const v0, 0x7f030017

    return v0
.end method

.method protected initSdCardDetection()V
    .locals 3

    .prologue
    new-instance v1, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$SdCardPlugInReceiver;-><init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;)V

    iput-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->isSdCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090560

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v2, 0x7f090562

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected isSdCardAvailable()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mSdTextView:Landroid/widget/TextView;

    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->refreshSdButton()V

    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity$1;-><init>(Lcom/android/settings/cit/CitSdCardPluginDetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->initSdCardDetection()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected refreshSdButton()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->mMountButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/cit/CitSdCardPluginDetectActivity;->isSdCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f090567

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    const v1, 0x7f090566

    goto :goto_0
.end method
