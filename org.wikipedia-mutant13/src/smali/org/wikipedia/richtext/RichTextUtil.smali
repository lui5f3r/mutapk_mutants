.class public final Lorg/wikipedia/richtext/RichTextUtil;
.super Ljava/lang/Object;
.source "RichTextUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySpans(Landroid/text/Spanned;Landroid/text/Spannable;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Landroid/text/Spannable;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 43
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 44
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 45
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getComposingSpans(Landroid/text/Spanned;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {p0, p1, p2}, Lorg/wikipedia/richtext/RichTextUtil;->getSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    .line 72
    invoke-static {p0, v2}, Lorg/wikipedia/richtext/RichTextUtil;->isComposingSpan(Landroid/text/Spanned;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSpans(Landroid/text/Spanned;II)[Ljava/lang/Object;
    .locals 1

    .line 80
    const-class v0, Ljava/lang/Object;

    .line 81
    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isComposingSpan(Landroid/text/Spanned;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x100

    .line 85
    invoke-static {p0, p1, v0}, Lorg/wikipedia/richtext/RichTextUtil;->isFlaggedSpan(Landroid/text/Spanned;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static isFlaggedSpan(Landroid/text/Spanned;Ljava/lang/Object;I)Z
    .locals 0

    .line 89
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static remove(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 4

    .line 139
    :try_start_0
    new-instance v0, Landroid/text/SpannedString;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    invoke-interface {p0, v3, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v3

    .line 140
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, p2, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 145
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static removeUnderlinesFromLinks(Landroid/text/Spannable;[Landroid/text/style/URLSpan;)V
    .locals 7

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 104
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 105
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 106
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 107
    new-instance v6, Lorg/wikipedia/richtext/URLSpanNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/wikipedia/richtext/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-interface {p0, v6, v4, v5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeUnderlinesFromLinks(Landroid/widget/TextView;)V
    .locals 4

    .line 93
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 96
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v1, v0}, Lorg/wikipedia/richtext/RichTextUtil;->removeUnderlinesFromLinks(Landroid/text/Spannable;[Landroid/text/style/URLSpan;)V

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static removeUnderlinesFromLinksAndMakeBold(Landroid/text/Spannable;[Landroid/text/style/URLSpan;)V
    .locals 7

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 124
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 125
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 126
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 127
    new-instance v6, Lorg/wikipedia/richtext/URLSpanBoldNoUnderline;

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/wikipedia/richtext/URLSpanBoldNoUnderline;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-interface {p0, v6, v4, v5, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeUnderlinesFromLinksAndMakeBold(Landroid/widget/TextView;)V
    .locals 4

    .line 113
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 116
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v1, v0}, Lorg/wikipedia/richtext/RichTextUtil;->removeUnderlinesFromLinksAndMakeBold(Landroid/text/Spannable;[Landroid/text/style/URLSpan;)V

    .line 117
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static varargs setSpans(Landroid/text/Spannable;III[Ljava/lang/Object;)Landroid/text/Spannable;
    .locals 3

    .line 27
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 28
    invoke-interface {p0, v2, p1, p2, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static stripHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 133
    invoke-static {p0}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stripRichText(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 2

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Landroid/text/Spanned;

    invoke-static {p0, p1, p2}, Lorg/wikipedia/richtext/RichTextUtil;->getComposingSpans(Landroid/text/Spanned;II)Ljava/util/List;

    move-result-object p1

    .line 55
    invoke-static {p0, v1, p1}, Lorg/wikipedia/richtext/RichTextUtil;->copySpans(Landroid/text/Spanned;Landroid/text/Spannable;Ljava/util/Collection;)V

    :cond_0
    return-object v1
.end method
