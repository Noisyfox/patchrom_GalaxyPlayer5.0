.class Lcom/android/settings/BatterySettings$3;
.super Landroid/content/BroadcastReceiver;
.source "BatterySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatterySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BatterySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/BatterySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "level"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, level:I
    const-string v6, "scale"

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, scale:I
    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    #getter for: Lcom/android/settings/BatterySettings;->mBatteryLevel:Lcom/android/settings/BatteryLevelPreference;
    invoke-static {v6}, Lcom/android/settings/BatterySettings;->access$000(Lcom/android/settings/BatterySettings;)Lcom/android/settings/BatteryLevelPreference;

    move-result-object v6

    mul-int/lit8 v7, v1, 0x64

    div-int/2addr v7, v3

    invoke-virtual {v6, v7}, Lcom/android/settings/BatteryLevelPreference;->setLevel(I)V

    const-string v6, "plugged"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, plugType:I
    const-string v6, "status"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, status:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    const v7, 0x7f09002f

    invoke-virtual {v6, v7}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, statusString:Ljava/lang/String;
    if-lez v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    if-ne v2, v9, :cond_1

    const v8, 0x7f090030

    :goto_0
    invoke-virtual {v7, v8}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v1           #level:I
    .end local v2           #plugType:I
    .end local v3           #scale:I
    .end local v4           #status:I
    .end local v5           #statusString:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1       #level:I
    .restart local v2       #plugType:I
    .restart local v3       #scale:I
    .restart local v4       #status:I
    .restart local v5       #statusString:Ljava/lang/String;
    :cond_1
    const v8, 0x7f090031

    goto :goto_0

    .end local v5           #statusString:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    const v7, 0x7f090032

    invoke-virtual {v6, v7}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .end local v5           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    const v7, 0x7f090033

    invoke-virtual {v6, v7}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .end local v5           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v6, 0x5

    if-ne v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    const v7, 0x7f090034

    invoke-virtual {v6, v7}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #statusString:Ljava/lang/String;
    goto :goto_1

    .end local v5           #statusString:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/BatterySettings$3;->this$0:Lcom/android/settings/BatterySettings;

    const v7, 0x7f09002e

    invoke-virtual {v6, v7}, Lcom/android/settings/BatterySettings;->getString(I)Ljava/lang/String;

    goto :goto_1
.end method
