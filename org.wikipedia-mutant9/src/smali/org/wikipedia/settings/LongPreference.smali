.class public Lorg/wikipedia/settings/LongPreference;
.super Lorg/wikipedia/settings/EditTextAutoSummarizePreference;
.source "LongPreference.java"


# static fields
.field private static final DEFAULT_RADIX:I = 0xa

.field private static final DEFAULT_STYLE:I = 0x7f110116

.field private static final DEFAULT_STYLEABLE:[I

.field private static final DEFAULT_SUMMARY_FORMAT:Ljava/lang/String; = "%d"


# instance fields
.field private radix:I

.field private summaryFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lorg/wikipedia/R$styleable;->LongPreference:[I

    sput-object v0, Lorg/wikipedia/settings/LongPreference;->DEFAULT_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/settings/LongPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040155

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/settings/LongPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 16
    iput p1, p0, Lorg/wikipedia/settings/LongPreference;->radix:I

    const-string p1, "%d"

    .line 17
    iput-object p1, p0, Lorg/wikipedia/settings/LongPreference;->summaryFormat:Ljava/lang/String;

    const p1, 0x7f110116

    .line 29
    invoke-direct {p0, p2, p3, p1}, Lorg/wikipedia/settings/LongPreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0xa

    .line 16
    iput p1, p0, Lorg/wikipedia/settings/LongPreference;->radix:I

    const-string p1, "%d"

    .line 17
    iput-object p1, p0, Lorg/wikipedia/settings/LongPreference;->summaryFormat:Ljava/lang/String;

    .line 34
    invoke-direct {p0, p2, p3, p4}, Lorg/wikipedia/settings/LongPreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/settings/LongPreference;->setAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/LongPreference;->DEFAULT_STYLEABLE:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/16 p3, 0xa

    .line 93
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lorg/wikipedia/settings/LongPreference;->radix:I

    const/4 p2, 0x2

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "%d"

    invoke-direct {p0, p2, p3}, Lorg/wikipedia/settings/LongPreference;->defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/settings/LongPreference;->summaryFormat:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->radixStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/settings/LongPreference;->longToSummary(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRadix()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/wikipedia/settings/LongPreference;->radix:I

    return v0
.end method

.method public getSummaryFormat()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/wikipedia/settings/LongPreference;->summaryFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected longToSummary(J)Ljava/lang/String;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lorg/wikipedia/settings/LongPreference;->getSummaryFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected persistRadixString(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->radixStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->persistLong(J)Z

    move-result p1

    return p1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->persistRadixString(Ljava/lang/String;)Z

    move-result v0

    .line 64
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->updateAutoSummary(Ljava/lang/String;)V

    return v0
.end method

.method protected radixStringToLong(Ljava/lang/String;)J
    .locals 2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/settings/LongPreference;->getRadix()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected sanitizeRadixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->radixStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/wikipedia/settings/LongPreference;->longToSummary(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setRadix(I)V
    .locals 0

    .line 42
    iput p1, p0, Lorg/wikipedia/settings/LongPreference;->radix:I

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary()V

    return-void
.end method

.method public setSummaryFormat(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/wikipedia/settings/LongPreference;->summaryFormat:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary()V

    return-void
.end method

.method protected updateAutoSummary(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->sanitizeRadixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary(Ljava/lang/String;)V

    return-void
.end method
