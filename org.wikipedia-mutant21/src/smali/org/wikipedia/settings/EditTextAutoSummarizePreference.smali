.class public Lorg/wikipedia/settings/EditTextAutoSummarizePreference;
.super Landroidx/preference/EditTextPreference;
.source "EditTextAutoSummarizePreference.java"


# static fields
.field private static final DEFAULT_AUTO_SUMMARIZE:Z = true

.field private static final DEFAULT_STYLE:I = 0x7f11010a

.field private static final DEFAULT_STYLEABLE:[I

.field protected static final DEFAULT_STYLE_ATTR:I = 0x7f040155


# instance fields
.field private autoSummarize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lorg/wikipedia/R$styleable;->EditTextAutoSummarizePreference:[I

    sput-object v0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->DEFAULT_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040155

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->autoSummarize:Z

    const p1, 0x7f11010a

    .line 29
    invoke-direct {p0, p2, p3, p1}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->autoSummarize:Z

    .line 35
    invoke-direct {p0, p2, p3, p4}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->setAttributes(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->DEFAULT_STYLEABLE:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 87
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->autoSummarize:Z

    .line 89
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getNoValueSummary()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1002b9

    .line 81
    invoke-virtual {p0, v1, v0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAutoSummarize()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->autoSummarize:Z

    return v0
.end method

.method protected isSet()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttached()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 50
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary()V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    move-result v0

    .line 57
    invoke-virtual {p0, p1}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary(Ljava/lang/String;)V

    return v0
.end method

.method public setAutoSummarize(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->autoSummarize:Z

    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary()V

    return-void
.end method

.method protected updateAutoSummary()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->updateAutoSummary(Ljava/lang/String;)V

    return-void
.end method

.method protected updateAutoSummary(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->isAutoSummarize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/wikipedia/settings/EditTextAutoSummarizePreference;->getNoValueSummary()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
