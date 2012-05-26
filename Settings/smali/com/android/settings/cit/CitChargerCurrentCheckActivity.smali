.class public Lcom/android/settings/cit/CitChargerCurrentCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitChargerCurrentCheckActivity.java"


# static fields
.field private static final CHARGER_CURRENT:Ljava/lang/String; = "/sys/kernel/debug/pm8058_usb_chg/stop"


# instance fields
.field protected mChargerCurrentUpdater:Ljava/lang/Runnable;

.field protected final mHandler:Landroid/os/Handler;

.field protected mStopUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity$1;-><init>(Lcom/android/settings/cit/CitChargerCurrentCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mChargerCurrentUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f09051b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readChargerCurrent()J
    .locals 6

    .prologue
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/kernel/debug/pm8058_usb_chg/stop"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read current string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    :goto_0
    return-wide v3

    .restart local v0       #buf:Ljava/io/BufferedReader;
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #str:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const-wide/16 v3, -0x1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090536

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mStopUpdate:Z

    iget-object v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mChargerCurrentUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mStopUpdate:Z

    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onDestroy()V

    return-void
.end method

.method protected updateChargerCurrent()V
    .locals 8

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->readChargerCurrent()J

    move-result-wide v0

    .local v0, current:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v4, 0x7f090572

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mStopUpdate:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->mChargerCurrentUpdater:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v4, 0x7f090573

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
