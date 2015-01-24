module ApplicationHelper

	def status_student status
		return (status == 1) ? "Ativo" : "Inativo"
	end

	def status_course status
		return (status == 1) ? "Ativo" : "Inativo"
	end
end
