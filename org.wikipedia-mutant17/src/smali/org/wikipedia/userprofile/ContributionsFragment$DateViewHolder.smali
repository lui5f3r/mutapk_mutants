.class final Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ContributionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/userprofile/ContributionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DateViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private headerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, p1}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 369
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lorg/wikipedia/util/DimenUtil;->roundedDpToPx(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f090387

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.section_header_text)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;->headerText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final bindItem(Ljava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getHeaderText()Landroid/widget/TextView;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;->headerText:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setHeaderText(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lorg/wikipedia/userprofile/ContributionsFragment$DateViewHolder;->headerText:Landroid/widget/TextView;

    return-void
.end method
