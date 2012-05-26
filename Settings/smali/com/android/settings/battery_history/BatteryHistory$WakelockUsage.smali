.class Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakelockUsage"
.end annotation


# instance fields
.field mCount:I

.field mTotalRealtime:D

.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;IJIJ)V
    .locals 4
    .parameter
    .parameter "uid"
    .parameter "time"
    .parameter "count"
    .parameter "totalRealtime"

    .prologue
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->getNameForUid(I)V

    const/4 v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mUsage:[D

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p3

    aput-wide v2, v0, v1

    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mTotalRealtime:D

    iput p5, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mCount:I

    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "info"

    .prologue
    const-string v3, "\n\n"

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f090316

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030d

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mUsage:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    const-string v0, "\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()D
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mTotalRealtime:D

    return-wide v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mUsage:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$WakelockUsage;->mUsage:[D

    return-object v0
.end method
