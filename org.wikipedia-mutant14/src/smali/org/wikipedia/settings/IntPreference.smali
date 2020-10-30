.class public Lorg/wikipedia/settings/IntPreference;
.super Lorg/wikipedia/settings/LongPreference;
.source "IntPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/settings/IntPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040155

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/settings/IntPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/settings/LongPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/wikipedia/settings/LongPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private intToSummary(I)Ljava/lang/String;
    .locals 3

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/settings/LongPreference;->getSummaryFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private radixStringToInt(Ljava/lang/String;)I
    .locals 2

    .line 39
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/LongPreference;->radixStringToLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/IntPreference;->radixStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/IntPreference;->intToSummary(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected persistRadixString(Ljava/lang/String;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/IntPreference;->radixStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p1

    return p1
.end method

.method protected sanitizeRadixString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/IntPreference;->radixStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/IntPreference;->intToSummary(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
