.class public Lcom/android/settings/FontSizeSettings;
.super Landroid/app/Activity;
.source "FontSizeSettings.java"


# instance fields
.field private mCurConfig:Landroid/content/res/Configuration;

.field private mFontSizeGroup:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeSettings;->setContentView(I)V

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontSize:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onStop()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mFontSizeGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FontSizeSettings;->finish()V

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    iput v1, v0, Landroid/content/res/Configuration;->fontSize:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->fontSize:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x3

    iput v1, v0, Landroid/content/res/Configuration;->fontSize:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/FontSizeSettings;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x4

    iput v1, v0, Landroid/content/res/Configuration;->fontSize:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0075
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
