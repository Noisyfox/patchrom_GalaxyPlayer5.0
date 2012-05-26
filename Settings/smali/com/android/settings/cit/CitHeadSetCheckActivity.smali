.class public abstract Lcom/android/settings/cit/CitHeadSetCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitHeadSetCheckActivity.java"


# instance fields
.field private mHeadsetStatus:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mHeadsetStatus:I

    new-instance v0, Lcom/android/settings/cit/CitHeadSetCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity$1;-><init>(Lcom/android/settings/cit/CitHeadSetCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitHeadSetCheckActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->updateHeadset(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cit/CitHeadSetCheckActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->handleMediaButtonAction(Landroid/content/Intent;)V

    return-void
.end method

.method private handleMediaButtonAction(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .local v0, event:Landroid/view/KeyEvent;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onMediaButtonPressed(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private updateHeadset(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, state:I
    iget v1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mHeadsetStatus:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mHeadsetStatus:I

    iget v1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mHeadsetStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onHeadSetPlugIn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onHeadSetPullOut()V

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitHeadSetCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void
.end method

.method protected onHeadSetPlugIn()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onHeadSetPullOut()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onMediaButtonPressed(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/cit/CitHeadSetCheckActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
