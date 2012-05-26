.class public Lcom/android/settings/HapticAdjust;
.super Landroid/app/Activity;
.source "HapticAdjust.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HapticAdjust$TestButton;
    }
.end annotation


# static fields
.field static final DESC_RESID:[I

.field static final PATTERN_RESID:[I


# instance fields
.field mAddButton:Landroid/widget/Button;

.field mCancelButton:Landroid/widget/Button;

.field mCounter:I

.field mDefaultButton:Landroid/widget/Button;

.field mHapType:I

.field mRevertButton:Landroid/widget/Button;

.field mSaveButton:Landroid/widget/Button;

.field mStartString:Ljava/lang/String;

.field mSubButton:Landroid/widget/Button;

.field mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

.field mVibrator:Landroid/os/Vibrator;

.field myClickListener:Landroid/view/View$OnClickListener;

.field sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/HapticAdjust;->DESC_RESID:[I

    return-void

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x7t 0x1t
        0x16t 0x0t 0x7t 0x1t
        0x10t 0x0t 0x7t 0x1t
        0x12t 0x0t 0x7t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0xdct 0x4t 0x9t 0x7ft
        0xddt 0x4t 0x9t 0x7ft
        0xdet 0x4t 0x9t 0x7ft
        0xdft 0x4t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    iput v0, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/HapticAdjust$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HapticAdjust$1;-><init>(Lcom/android/settings/HapticAdjust;)V

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/HapticAdjust$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HapticAdjust$2;-><init>(Lcom/android/settings/HapticAdjust;)V

    iput-object v0, p0, Lcom/android/settings/HapticAdjust;->sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->saveChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->cancelChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->testVibe()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/HapticAdjust;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/HapticAdjust;->defSet(I)V

    return-void
.end method

.method private cancelChanges()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    .local v0, output:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, returnIntent:Landroid/content/Intent;
    const-string v2, "returnval"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/HapticAdjust;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->finish()V

    return-void
.end method

.method private checkRowColors()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "  "

    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v1, v3, 0x190

    .local v1, target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0904db

    invoke-virtual {p0, v4}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .end local v0           #str:Ljava/lang/String;
    .end local v1           #target:I
    .end local v2           #tv:Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-le v3, v4, :cond_1

    const/16 v1, 0x191

    .restart local v1       #target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0904da

    invoke-virtual {p0, v4}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .end local v0           #str:Ljava/lang/String;
    .end local v1           #target:I
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    goto :goto_0
.end method

.method private clearTable()V
    .locals 2

    .prologue
    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .local v0, table:Landroid/widget/TableLayout;
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    return-void
.end method

.method private defSet(I)V
    .locals 2
    .parameter "type"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    const v0, 0x7f0904eb

    invoke-virtual {p0, v0}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->revertChanges()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    goto :goto_0
.end method

.method private getArray()[I
    .locals 10

    .prologue
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    new-array v4, v9, [I

    .local v4, result:[I
    const/4 v7, 0x0

    .local v7, trimPos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    if-ge v1, v9, :cond_0

    add-int/lit16 v9, v1, 0x3e9

    invoke-virtual {p0, v9}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, target:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v6           #target:Landroid/widget/TextView;
    :cond_0
    array-length v5, v4

    .local v5, startLen:I
    const/4 v9, 0x1

    sub-int v2, v5, v9

    .local v2, j:I
    :goto_1
    if-lez v2, :cond_1

    aget v9, v4, v2

    if-nez v9, :cond_1

    move v7, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_2

    move-object v9, v4

    :goto_2
    return-object v9

    :cond_2
    move v0, v7

    .local v0, finalLength:I
    new-array v8, v0, [I

    .local v8, trimmed:[I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3
    if-ge v3, v0, :cond_3

    aget v9, v4, v3

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move-object v9, v8

    goto :goto_2
.end method

.method private intToString([I)Ljava/lang/String;
    .locals 6
    .parameter "inpint"

    .prologue
    const/4 v2, 0x0

    .local v2, returnstring:Ljava/lang/String;
    array-length v1, p1

    .local v1, lol:I
    const-string v3, ""

    .local v3, workstring:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v3

    return-object v2
.end method

.method private revertChanges()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    const v0, 0x7f0904ea

    invoke-virtual {p0, v0}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    return-void
.end method

.method private saveChanges()V
    .locals 4

    .prologue
    iget v3, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    new-array v0, v3, [I

    .local v0, array:[I
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->getArray()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->intToString([I)Ljava/lang/String;

    move-result-object v1

    .local v1, output:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, returnIntent:Landroid/content/Intent;
    const-string v3, "returnval"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/HapticAdjust;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->finish()V

    return-void
.end method

.method private setupRows(Ljava/lang/String;)Z
    .locals 3
    .parameter "ss"

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/HapticAdjust;->PATTERN_RESID:[I

    iget v2, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/HapticAdjust;->stringToInt(Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->setupRows([I)Z

    move-result v0

    goto :goto_0
.end method

.method private setupRows([I)Z
    .locals 3
    .parameter "vals"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->addRow(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    const/4 v2, 0x1

    return v2
.end method

.method private stringToInt(Ljava/lang/String;)[I
    .locals 5
    .parameter "inpstring"

    .prologue
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, splitstr:[Ljava/lang/String;
    array-length v1, v3

    .local v1, los:I
    new-array v2, v1, [I

    .local v2, returnint:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private testVibe()V
    .locals 6

    .prologue
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->getArray()[I

    move-result-object v0

    .local v0, array:[I
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->clearTable()V

    invoke-direct {p0, v0}, Lcom/android/settings/HapticAdjust;->intToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    array-length v3, v0

    new-array v2, v3, [J

    .local v2, vibePattern:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1
.end method


# virtual methods
.method public addRow(I)Z
    .locals 13
    .parameter "val"

    .prologue
    const v9, 0x7f0c0081

    invoke-virtual {p0, v9}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableLayout;

    .local v8, table:Landroid/widget/TableLayout;
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .local v3, row:Landroid/widget/TableRow;
    const/4 v0, 0x0

    .local v0, curid:I
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v0, v9, 0xc9

    invoke-virtual {v3, v0}, Landroid/widget/TableRow;->setId(I)V

    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .local v5, sb:Landroid/widget/SeekBar;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/high16 v12, 0x3f80

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setFocusable(Z)V

    const/16 v9, 0x64

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {v5, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit8 v9, v9, 0x65

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setId(I)V

    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/settings/HapticAdjust;->sbChange:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v7, t:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, s:Ljava/lang/String;
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v9, v9, 0x3e9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setId(I)V

    const/high16 v9, 0x41a0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinEms(I)V

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, onoff:Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0904db

    invoke-virtual {p0, v10}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, str:Ljava/lang/String;
    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0904da

    invoke-virtual {p0, v10}, Lcom/android/settings/HapticAdjust;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v9, v9, 0x191

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v9

    iput v9, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    const/4 v2, 0x1

    .local v2, output:Z
    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/HapticAdjust;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "start_string"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    const-string v2, "hap_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->setContentView(I)V

    const v2, 0x7f0c007d

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, downDesc:Landroid/widget/TextView;
    sget-object v2, Lcom/android/settings/HapticAdjust;->DESC_RESID:[I

    iget v3, p0, Lcom/android/settings/HapticAdjust;->mHapType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    const v2, 0x7f0c007f

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mAddButton:Landroid/widget/Button;

    const v2, 0x7f0c0080

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mSubButton:Landroid/widget/Button;

    const v2, 0x7f0c0082

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0c0083

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/HapticAdjust$TestButton;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f0c0084

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mRevertButton:Landroid/widget/Button;

    const v2, 0x7f0c0085

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mDefaultButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mAddButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mSubButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mSaveButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mRevertButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mDefaultButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

    iget-object v3, p0, Lcom/android/settings/HapticAdjust;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/HapticAdjust$TestButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/HapticAdjust;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/android/settings/HapticAdjust;->mStartString:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/HapticAdjust;->setupRows(Ljava/lang/String;)Z

    return-void

    .end local v1           #downDesc:Landroid/widget/TextView;
    :cond_0
    const-string v2, "HapticAdjust"

    const-string v3, "haptic adjust something wrong with bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public subRow()V
    .locals 4

    .prologue
    iget v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0c0081

    invoke-virtual {p0, v2}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .local v0, table:Landroid/widget/TableLayout;
    iget v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    add-int/lit16 v1, v2, 0xc8

    .local v1, target:I
    invoke-virtual {p0, v1}, Lcom/android/settings/HapticAdjust;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    iput v2, p0, Lcom/android/settings/HapticAdjust;->mCounter:I

    invoke-direct {p0}, Lcom/android/settings/HapticAdjust;->checkRowColors()V

    goto :goto_0
.end method
