.class public final Lorg/wikipedia/page/ToCHandler$ToCAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToCHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/ToCHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ToCAdapter"
.end annotation


# instance fields
.field private highlightedSection:I

.field private final sectionYOffsets:Landroid/util/SparseIntArray;

.field private final sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/wikipedia/page/Section;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/page/ToCHandler;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/ToCHandler;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 210
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    .line 211
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getItem(I)Lorg/wikipedia/page/Section;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/wikipedia/page/Section;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/Section;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 261
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0090

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->getItem(I)Lorg/wikipedia/page/Section;

    move-result-object p3

    const v0, 0x7f0902e0

    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0902df

    .line 265
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    invoke-virtual {p3}, Lorg/wikipedia/page/Section;->getHeading()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 269
    invoke-virtual {p3}, Lorg/wikipedia/page/Section;->isLead()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/high16 v2, 0x41c00000    # 24.0f

    .line 271
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p3}, Lorg/wikipedia/page/Section;->getLevel()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/high16 v2, 0x41900000    # 18.0f

    .line 274
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 276
    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    const/4 v3, 0x2

    .line 278
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 280
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 281
    invoke-static {v2}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 282
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget v1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->highlightedSection:I

    if-ne v1, p1, :cond_3

    .line 285
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/ToCHandler;

    invoke-static {p1}, Lorg/wikipedia/page/ToCHandler;->access$000(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0400c5

    invoke-static {p1, p3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 287
    :cond_3
    invoke-virtual {p3}, Lorg/wikipedia/page/Section;->getLevel()I

    move-result p1

    if-le p1, v4, :cond_4

    .line 288
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/ToCHandler;

    .line 289
    invoke-static {p1}, Lorg/wikipedia/page/ToCHandler;->access$000(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0402e9

    invoke-static {p1, p3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 291
    :cond_4
    iget-object p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->this$0:Lorg/wikipedia/page/ToCHandler;

    .line 292
    invoke-static {p1}, Lorg/wikipedia/page/ToCHandler;->access$000(Lorg/wikipedia/page/ToCHandler;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0403ea

    invoke-static {p1, p3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result p1

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-object p2
.end method

.method getYOffset(I)I
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method setHighlightedSection(I)V
    .locals 0

    .line 231
    iput p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->highlightedSection:I

    .line 232
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setPage(Lorg/wikipedia/page/Page;)V
    .locals 8

    .line 215
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 218
    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/Section;

    .line 219
    invoke-virtual {v1}, Lorg/wikipedia/page/Section;->getLevel()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v2, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sections:Ljava/util/ArrayList;

    new-instance v7, Lorg/wikipedia/page/Section;

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 225
    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v1

    const v4, 0x7f10001e

    invoke-static {v1, v4}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/wikipedia/page/Page;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    invoke-static {p1, v4}, Lorg/wikipedia/util/L10nUtil;->getStringForArticleLanguage(Lorg/wikipedia/page/PageTitle;I)Ljava/lang/String;

    move-result-object p1

    const-string v6, ""

    move-object v1, v7

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/Section;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 226
    iput p1, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->highlightedSection:I

    .line 227
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setYOffset(II)V
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/wikipedia/page/ToCHandler$ToCAdapter;->sectionYOffsets:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
