.class Lcom/android/settings/LightLevelsActivity$3;
.super Ljava/lang/Object;
.source "LightLevelsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LightLevelsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LightLevelsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/LightLevelsActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f0904c7

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, " / "

    const-string v10, "-"

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    invoke-virtual {v5}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    const/16 v7, 0x539

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    move v0, v9

    .local v0, autoLcd:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    invoke-virtual {v5}, Lcom/android/settings/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "light_filter"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v9

    .local v2, filterEnabled:Z
    :goto_1
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$100(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Landroid/os/IPowerManager;->getRawLightSensorValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorScreenBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$300(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorButtonBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mHasKeyboard:Z
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$400(Lcom/android/settings/LightLevelsActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$500(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorKeyboardBrightness()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_4
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$700(Lcom/android/settings/LightLevelsActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/settings/LightLevelsActivity;->access$600(Lcom/android/settings/LightLevelsActivity;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x190

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .end local v0           #autoLcd:Z
    .end local v2           #filterEnabled:Z
    :cond_1
    move v0, v8

    goto/16 :goto_0

    .restart local v0       #autoLcd:Z
    :cond_2
    move v2, v8

    goto/16 :goto_1

    .restart local v2       #filterEnabled:Z
    .restart local v3       #power:Landroid/os/IPowerManager;
    :cond_3
    :try_start_1
    invoke-interface {v3}, Landroid/os/IPowerManager;->getLightSensorValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$100(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v3           #power:Landroid/os/IPowerManager;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mSensor:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$100(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "- / -"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mButtons:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$300(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$500(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #power:Landroid/os/IPowerManager;
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    const v7, 0x7f0904c7

    invoke-virtual {v6, v7}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .end local v3           #power:Landroid/os/IPowerManager;
    .restart local v1       #e:Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    #getter for: Lcom/android/settings/LightLevelsActivity;->mScreen:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/LightLevelsActivity;->access$200(Lcom/android/settings/LightLevelsActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LightLevelsActivity$3;->this$0:Lcom/android/settings/LightLevelsActivity;

    invoke-virtual {v6, v11}, Lcom/android/settings/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
