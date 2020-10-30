.class Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;
.super Landroid/view/ActionProvider;
.source "PageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindReferenceInPageActionProvider"
.end annotation


# instance fields
.field private backLinksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentPos:I

.field private findInPageClose:Landroid/view/View;

.field private findInPageNext:Landroid/view/View;

.field private findInPagePrev:Landroid/view/View;

.field private referenceAnchor:Ljava/lang/String;

.field private referenceCount:Landroid/widget/TextView;

.field private referenceLabel:Landroid/widget/TextView;

.field private referenceText:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1499
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 1500
    invoke-direct {p0, p2}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 1501
    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceAnchor:Ljava/lang/String;

    .line 1502
    iput-object p4, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceText:Ljava/lang/String;

    .line 1503
    iput-object p5, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    return-void
.end method

.method private scrollTo(I)V
    .locals 5

    .line 1553
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceCount:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f100135

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {v0}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->prepareToScrollTo(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPagePrev:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1536
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 1537
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    goto :goto_1

    .line 1539
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageNext:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1541
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    :goto_0
    iput p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->currentPos:I

    .line 1542
    invoke-direct {p0, p1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1545
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-static {p1}, Lorg/wikipedia/page/PageFragment;->access$700(Lorg/wikipedia/page/PageFragment;)Lorg/wikipedia/bridge/CommunicationBridge;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceAnchor:Ljava/lang/String;

    invoke-static {v0}, Lorg/wikipedia/bridge/JavaScriptActionHandler;->scrollToAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 1546
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageCloseActionMode()V

    goto :goto_1

    .line 1547
    :cond_4
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageClose:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1548
    iget-object p1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->callback()Lorg/wikipedia/page/PageFragment$Callback;

    move-result-object p1

    invoke-interface {p1}, Lorg/wikipedia/page/PageFragment$Callback;->onPageCloseActionMode()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 5

    .line 1508
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c006d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09033d

    .line 1509
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceLabel:Landroid/widget/TextView;

    const v1, 0x7f09033b

    .line 1510
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceCount:Landroid/widget/TextView;

    const v1, 0x7f090158

    .line 1511
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPagePrev:Landroid/view/View;

    const v1, 0x7f090157

    .line 1512
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageNext:Landroid/view/View;

    const v1, 0x7f0900ba

    .line 1513
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageClose:Landroid/view/View;

    .line 1514
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPagePrev:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageNext:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceLabel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->findInPageClose:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceLabel:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->this$0:Lorg/wikipedia/page/PageFragment;

    const v4, 0x7f100371

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->referenceText:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1521
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->backLinksList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1522
    invoke-direct {p0, v1}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;->scrollTo(I)V

    :cond_0
    return-object v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
