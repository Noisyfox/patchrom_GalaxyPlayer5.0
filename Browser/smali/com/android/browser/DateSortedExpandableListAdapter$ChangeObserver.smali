.class Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "DateSortedExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/DateSortedExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/DateSortedExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/DateSortedExpandableListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;->this$0:Lcom/android/browser/DateSortedExpandableListAdapter;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/DateSortedExpandableListAdapter$ChangeObserver;->this$0:Lcom/android/browser/DateSortedExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/browser/DateSortedExpandableListAdapter;->refreshData()V

    .line 68
    return-void
.end method
