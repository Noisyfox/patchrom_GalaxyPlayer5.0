.class Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuUsage"
.end annotation


# instance fields
.field mProcess:Ljava/lang/String;

.field mStarts:J

.field mTotalRuntime:D

.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;ILjava/lang/String;JJJJ)V
    .locals 5
    .parameter
    .parameter "uid"
    .parameter "process"
    .parameter "userTime"
    .parameter "systemTime"
    .parameter "starts"
    .parameter "totalRuntime"

    .prologue
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->getNameForUid(I)V

    iput-object p3, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mProcess:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settings/battery_history/BatteryHistory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/android/settings/battery_history/BatteryHistory;->getLabel(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    invoke-static {p3, v0}, Lcom/android/settings/battery_history/BatteryHistory;->access$000(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    const/4 v2, 0x0

    long-to-double v3, p4

    aput-wide v3, v1, v2

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    const/4 v2, 0x1

    add-long v3, p4, p6

    long-to-double v3, v3

    aput-wide v3, v1, v2

    long-to-double v1, p10

    iput-wide v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mTotalRuntime:D

    iput-wide p8, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mStarts:J

    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "info"

    .prologue
    const/16 v9, 0xa

    const-wide/high16 v7, 0x4024

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030a

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mProcess:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030b

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    aget-wide v1, v1, v5

    mul-double/2addr v1, v7

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030c

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    aget-wide v1, v1, v6

    iget-object v3, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    aget-wide v3, v3, v5

    sub-double/2addr v1, v3

    mul-double/2addr v1, v7

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030d

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    aget-wide v1, v1, v6

    mul-double/2addr v1, v7

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030e

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mStarts:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mTotalRuntime:D

    return-wide v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$CpuUsage;->mUsage:[D

    return-object v0
.end method
