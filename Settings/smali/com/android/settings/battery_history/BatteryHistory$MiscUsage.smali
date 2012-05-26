.class Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiscUsage"
.end annotation


# instance fields
.field mInfoLabel:Ljava/lang/String;

.field mInfoLabelRes:I

.field mTotalRealtime:D

.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "infoLabelRes"
    .parameter "value"
    .parameter "totalRealtime"

    .prologue
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    iput-object p2, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabelRes:I

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p4

    aput-wide v2, v0, v1

    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "infoLabel"
    .parameter "value"
    .parameter "totalRealtime"

    .prologue
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    iput-object p2, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p4

    aput-wide v2, v0, v1

    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    aget-wide v1, v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    aget-wide v0, v0, v3

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabelRes:I

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    iget-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    return-wide v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    return-object v0
.end method
