package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Extra;
import com.spring.nordicmotorhomes.repository.ExtraRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class ExtraService {

    @Autowired
    private ExtraRepository extraRepository;

    public Extra getById(long id) {
        return extraRepository.findById((long) id).orElse(null);
    }

    public Set<Extra> getExtrasByIDs(Set<Integer> extraIDs) {
        Set<Extra> extras = new HashSet<>();
        for (int id : extraIDs) {
            Extra extra = getById((long) id);
            if (extra == null) {
                return null;
            }
            extras.add(extra);
        }
        return extras;
    }

    public double getExtrasTotalPrice(Set<Extra> extras) {
        double total = 0;
        for (Extra extra : extras) {
            total += extra.getPrice();
        }
        return total;
    }
}
