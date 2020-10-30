.class Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LangLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LangLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultViewHolder"
.end annotation


# instance fields
.field private final languageEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;"
        }
    .end annotation
.end field

.field private sectionHeaderTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/PageTitle;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->this$0:Lorg/wikipedia/language/LangLinksActivity;

    .line 398
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090387

    .line 399
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->sectionHeaderTextView:Landroid/widget/TextView;

    .line 400
    iput-object p2, p0, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->languageEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 2

    .line 405
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->sectionHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/language/LangLinksActivity$DefaultViewHolder;->languageEntries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
