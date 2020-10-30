.class Lorg/wikipedia/page/tabs/TabActivity$1;
.super Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;
.source "TabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/tabs/TabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/tabs/TabActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/tabs/TabActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I
    .locals 0

    if-nez p2, :cond_0

    .line 188
    invoke-static {}, Lorg/wikipedia/page/tabs/TabActivity;->access$100()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/wikipedia/page/tabs/TabActivity;->access$100()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 152
    new-instance p1, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    invoke-static {}, Lorg/wikipedia/page/tabs/TabActivity;->access$100()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/page/tabs/TabActivity;->access$200(Lorg/wikipedia/page/tabs/TabActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/util/DimenUtil;->getToolbarHeightPx(Landroid/content/Context;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-object p1

    :cond_1
    const p3, 0x7f0c008d

    .line 160
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 0

    .line 166
    iget-object p1, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p1}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getTabCount()I

    move-result p1

    sub-int/2addr p1, p5

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-eq p6, p2, :cond_2

    if-ltz p1, :cond_2

    .line 167
    iget-object p2, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p2}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const p2, 0x7f0903c2

    .line 170
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p4, 0x7f0903c1

    .line 171
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 173
    iget-object p5, p0, Lorg/wikipedia/page/tabs/TabActivity$1;->this$0:Lorg/wikipedia/page/tabs/TabActivity;

    invoke-static {p5}, Lorg/wikipedia/page/tabs/TabActivity;->access$300(Lorg/wikipedia/page/tabs/TabActivity;)Lorg/wikipedia/WikipediaApp;

    move-result-object p5

    invoke-virtual {p5}, Lorg/wikipedia/WikipediaApp;->getTabList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/tabs/Tab;

    invoke-virtual {p1}, Lorg/wikipedia/page/tabs/Tab;->getBackStackPositionTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    .line 177
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 180
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :goto_0
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->languageCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/wikipedia/util/L10nUtil;->setConditionalLayoutDirection(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
